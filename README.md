# SigScale OCS, UERANUERANSIM SIM and Open5GS Integration

Integration of SigScale OCS with Openg5GS and UERANSIM

## OCS Setup

Run it with docker:

```
docker pull sigscale/ocs
docker run -ti --entrypoint bash -h ocs.open5gs.local -v db:/home/otp/db sigscale/ocs
bin/initialize
exit
docker run -dti -h ocs.open5gs.local -v db:/home/otp/db -p 8080:8080/tcp \
         -p 1812:1812/udp -p 1813:1813/udp -p 3868:3868/tcp \
         -p 4161:4161/udp sigscale/ocs
```

## Open5GS Setup

1. Follow instructions [here](https://open5gs.org/open5gs/docs/guide/01-quickstart/).

## Goals/Outcomes

SigScale OCS to handle:

1. Online Charging (Gy interface): SMF talks to OCS.
2. Test with UERANSIM.

## Open5GS Configuration

1. In /etc/freeDiameter/smf.conf add a line like this:

```
ConnectPeer = "ocs.open5gs.local" { ConnectTo = "10.10.10.2"; Port = 3868; No_TLS; };
```

2. In smf.yaml enable the ctf (Charging Trigger Function):

```
ctf: enabled: yes # auto(default)|yes|no
```

## OCS Configuration

1. docker exec -u 0 -it busy_dirac bash
2. apt update && apt install -y nano
3. Edit releases/ocs-3.4.36/sys.config:

```
{acct,
             [
              % Listen on all interfaces within the container on port 3868
              {{0,0,0,0}, 3868,
                  [
                   {'Origin-Host', "ocs.open5gs.local"},
                   {'Origin-Realm', "open5gs.local"},
                   {sub_id_type, [imsi]} % Match subscribers by IMSI
                  ]
              }
             ]
         },
```

4. This will not work until you add your client to the clients page on the UI. You can find the details to add by looking at your OCS logs and finding a line that looks like this:

```
=INFO REPORT==== 27-May-2025::08:16:03.594648 ===
    "DIAMETER peer address not found in client table"
    service: {ocs_diameter_acct_service,{0,0,0,0},3868}
    result: 3010
    peer: smf.localdomain
    addresses: [{127,0,0,4}]
```

This means you should add a diameter client with the address of 127.0.0.4. After doing this you should see the following in the logs:

```
=INFO REPORT==== 27-May-2025::08:16:53.859440 ===
    "DIAMETER peer connection state changed"
    service: {ocs_diameter_acct_service,{0,0,0,0},3868}
    event: up
    peer: smf.localdomain
```

5. Add a subscriber to OCS with the IMSI, Subscriber Key (K) and Operator Key (OPc). Add credit.
