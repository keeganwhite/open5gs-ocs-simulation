# 4G Virtualized Open5GS + srsRAN Setup (Fully Virtual, Docker Compose)

This guide explains how to deploy a **fully virtualized** Open5GS LTE (EPC) core network using Docker Compose and the [herlesupreeth/docker_open5gs](https://github.com/herlesupreeth/docker_open5gs) repository, and how to connect a virtualized srsRAN 4G eNB and UE (using ZMQ/virtual radio, no physical SDR required) for a complete test LTE network.

We will then connect the network to sigscale OCS.

---

## 1. Prerequisites

- **Linux host** (Ubuntu 22.04 recommended)
- **Docker** and **Docker Compose**
- **No physical radio hardware required** (all components run as software)

---

## 2. Clone the Repository

```sh
git clone https://github.com/herlesupreeth/docker_open5gs.git
cd docker_open5gs
```

---

## 3. Pull Required Images

Pull the pre-built images from the GitHub Container Registry:

```sh
# Open5GS core image
docker pull ghcr.io/herlesupreeth/docker_open5gs:master
docker tag ghcr.io/herlesupreeth/docker_open5gs:master docker_open5gs

# Kamailio IMS image (optional, for IMS/VoLTE)
docker pull ghcr.io/herlesupreeth/docker_kamailio:master
docker tag ghcr.io/herlesupreeth/docker_kamailio:master docker_kamailio

# srsRAN 4G eNB/UE image (virtual radio)
docker pull ghcr.io/herlesupreeth/docker_srslte:master
docker tag ghcr.io/herlesupreeth/docker_srslte:master docker_srslte
```

---

## 4. Configure Your Environment

Edit the `.env` file in the root of the repo. Set at least:

- `MCC` and `MNC` (match your SIM/UE)
- `DOCKER_HOST_IP` (the IP address of your Docker host)
- `UE_IPV4_INTERNET` (the IP range for UEs, e.g., `10.45.0.0/16`)

Example:

```
MCC=001
MNC=01
DOCKER_HOST_IP=10.10.10.2
UE_IPV4_INTERNET=10.45.0.0/16
```

---

## 5. Start the Core Network

```sh
docker compose -f 4g-volte-deploy.yaml up -d
```

- This brings up the full Open5GS EPC (MME, HSS, SGW, PGW, WebUI, MongoDB, etc.).
- Check running containers with `docker ps`.

---

## 6. Add a Subscriber (UE/SIM)

Open the WebUI at [http://<DOCKER_HOST_IP>:9999](http://<DOCKER_HOST_IP>:9999)

- Username: `admin`
- Password: `1423`

Add a subscriber with your IMSI, key, and OPc (matching your srsRAN UE config).

Or, via CLI:

```sh
docker exec -it hss misc/db/open5gs-dbctl add <IMSI> <KEY> <OPC>
```

---

## 7. Start the Virtualized srsRAN eNB and UE (ZMQ/Virtual Radio)

You can use the provided Docker Compose files for srsRAN eNB and UE simulation **with ZMQ (virtual radio)**:

- **srsRAN eNB (ZMQ/virtual radio):**

  ```sh
  docker compose -f srsenb_zmq.yaml up -d && docker container attach srsenb_zmq
  ```

- **srsRAN UE (ZMQ/virtual radio):**
  ```sh
  docker compose -f srsue_zmq.yaml up -d && docker container attach srsue_zmq
  ```

**Note:**

- Edit the `srsenb_zmq.yaml` and `srsue_zmq.yaml` files if you need to change IPs, MCC, MNC, or other parameters.
- For multi-host setups, see the repo's README for network configuration tips.
- **No physical SDR or radio hardware is required.**

---

## 8. Validate the Setup

- Check the Open5GS WebUI for UE attachment.
- Use `docker logs <container>` to view logs for MME, HSS, SGW, PGW, eNB, and UE.
- Use `tcpdump` or `wireshark` on the host or inside containers to inspect S1AP, GTP, and user-plane traffic.

---

## 9. Stopping and Cleaning Up

To stop the network:

```sh
docker compose -f 4g-volte-deploy.yaml down
```

To stop eNB/UE:

```sh
docker compose -f srsenb_zmq.yaml down
docker compose -f srsue_zmq.yaml down
```

---

## 10. Troubleshooting

- If the UE does not attach, check the logs for MME, HSS, eNB, and UE.
- Ensure the IMSI, key, and OPc match between the HSS and UE config.
- For ZMQ simulation, ensure ports are not blocked by a firewall.
- For more, see the [docker_open5gs README](https://github.com/herlesupreeth/docker_open5gs#readme).

---

## 11. References

- [herlesupreeth/docker_open5gs GitHub](https://github.com/herlesupreeth/docker_open5gs)
- [Open5GS WebUI Guide](https://open5gs.org/open5gs/docs/guide/02-webui/)
- [srsRAN 4G Documentation](https://docs.srsran.com/projects/4g/en/latest/)
- [srsRAN 4G with ZMQ Virtual Radios](https://docs.srsran.com/projects/4g/en/latest/app_notes/source/zeromq/source/index.html)

---

**Summary:**
This guide is for a **fully virtualized** 4G LTE network using Open5GS and srsRAN 4G with ZMQ (virtual radio). No physical radio hardware is required. All components run as software containers or processes, making it ideal for development, CI/CD, and testing environments.
