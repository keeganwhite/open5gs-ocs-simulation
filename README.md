# Open5GS + SigScale OCS Integration Guide

This guide documents the steps to deploy an Open5GS core network with SigScale OCS for online charging, including how to configure the environment, add subscribers, and provision products for UEs.

I have extracted the code from the [docker_open5gs](https://github.com/herlesupreeth/docker_open5gs) OCS branch and edited it a bit to make it work with the latest version of SigScale OCS.

This depploys a **4G Core Network + IMS + SMS over SGs (uses Kamailio IMS)**.

---

## Prerequisites

- Docker and Docker Compose installed
- Clone of this repository
- Set your available IP addresses and UE credentials. Example UE section:

```env
UE1_IMEI=356938035643803
UE1_IMEISV=4370816125816151
UE1_IMSI=001011234567895
UE1_KI=465B5CE8B199B49FAA5F0A2EE238A6BC
UE1_OP=E8ED289DEBA952E4283B54E88E6183CA
UE1_AMF=8000
```

> **Tip:** Make sure all IPs in `.env` are available and not in use by other services.

---

## Quickstart

### 1. Pull requried images, tag them and start the Core Network

```sh
./build_and_tag.sh
docker compose -f 4g-volte-deploy.yaml build
docker compose -f 4g-volte-deploy.yaml up
```

Monitor logs for successful service startup.

### 2. Add Subscribers and Products

#### **A. Open5GS WebUI**

- Access the Open5GS WebUI (usually at `http://<WEBUI_IP>:9999`).
- Add a new subscriber with the IMSI and authentication details from your `.env`.
- **Important:**
  - Set the USIM Type to `OP` (not `OPc`) when using a virtual UE.
  - Enter the correct `KI` and `OP` values.

#### **B. SigScale OCS UI**

- Access the OCS UI at [http://<OCS_IP>:8083](http://<OCS_IP>:8083).
- Add a new client/subscriber with the same IMSI.
- Add a product and assign it to the subscriber.
- Set the product's credit (e.g., bytes, cents, seconds) as needed. I had bytes and cents showing up and cents were a negative number and even though I had bytes I couldn't get it to work.

### 3. Simulate RF client and radio

Run in different terminals:

- `docker compose -f srsenb_zmq.yaml up -d && docker container attach srsenb_zmq`
- `docker compose -f srsue_zmq.yaml up -d && docker container attach srsue_zmq`

## Tips & Troubleshooting

- **USIM Type:**  
  Always set to `OP` in Open5GS UI for Milenage authentication (not `OPc`) when using a virtual UE.
- **Credit Control:**  
  Ensure the OCS product assigned to the subscriber has a positive balance in the relevant bucket (e.g., bytes, cents).
- **Logs:**  
  Check container logs for errors if attach or charging fails.
- **Network:**  
  Make sure all containers are on the same Docker network and can reach each other.

---

## Changes from docker_open5gs

### 1. Update OCS Section in `4g-volte-deploy.yaml`

Ensure the OCS service is exposed for UI access and uses the correct network settings:

```yaml
ocs:
  build: ./ocs
  image: docker_ocs
  container_name: ocs
  env_file:
    - .env
  environment:
    - COMPONENT_NAME=ocs
  depends_on:
    - smf
  volumes:
    - ./ocs:/mnt/ocs
    - ocsdbdata:/home/otp/db
    - /etc/timezone:/etc/timezone:ro
    - /etc/localtime:/etc/localtime:ro
  expose:
    - "${OCS_BIND_PORT}/tcp"
    - "${OCS_BIND_PORT}/sctp"
    - "8083/tcp"
  ports:
    - "8083:8083/tcp"
  networks:
    default:
      ipv4_address: ${OCS_IP}
```

### 2. Update the OCS Dockerfile

Use the latest SigScale OCS image (with bug fixes):

```dockerfile
FROM sigscale/ocs:3.4.41-1
```

### 3. Updated the `.env` File (IP addresses and UE section):

```env
UE1_IMEI=356938035643803
UE1_IMEISV=4370816125816151
UE1_IMSI=001011234567895
UE1_KI=465B5CE8B199B49FAA5F0A2EE238A6BC
UE1_OP=E8ED289DEBA952E4283B54E88E6183CA
UE1_AMF=8000
```

---

## References

- [Open5GS Documentation](https://open5gs.org/open5gs/docs/)
- [SigScale OCS Documentation](https://docs.sigscale.org/ocs/)
- [srsRAN 4G User Manual](https://docs.srsran.com/projects/4g/en/latest/usermanuals/source/srsue/source/1_ue_intro.html#ue-intro)
