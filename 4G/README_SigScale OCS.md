# 4G Virtualized SigScale OCS IntegraTion (Fully Virtual, Docker Compose)

Follow these instructions to enable online billing with your Open5GS network.

## 1. Prerequisites

Ensure you have set up Open5GS and srsRAN as described in the `4G/README.md`.

## 2. Setting up SigScale OCS Docker

Set up sigscale as follows:

```
docker pull sigscale/ocs
docker run -ti --entrypoint bash -h ocs.open5gs.local -v db:/home/otp/db sigscale/ocs
bin/initialize
apt update && apt install nano -y
exit
docker run -dti --name sigscale-ocs -h ocs.open5gs.local -v db:/home/otp/db -p 8080:8080/tcp \
         -p 1812:1812/udp -p 1813:1813/udp -p 3868:3868/tcp \
         -p 4161:4161/udp sigscale/ocs
```

Edit releases/ocs-<VERSION>/sys.config in the diameter config:
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
Restart the container: `docker restart sigscale-ocs`.

## 3. Connect to your SMF container and edit the config

- Edit `docker_open5gs/smf/smf.conf` by adding this to the edn of the file: `ConnectPeer = "ocs.open5gs.local" { ConnectTo = "10.10.10.2"; Port = 3868; No_TLS; };`.
- Edit `docker_open5gs/smf/smf_4g.yaml` by adding `ctf: enabled: yes # auto(default)|yes|no` so it should look like this:

```
...
smf:
  freeDiameter: /open5gs/install/etc/freeDiameter/smf.conf
  ctf:
    enabled: yes # auto(default)|yes|no
...
```

Add the client to the sigscale client list with the IP address and set it to the diameter protocol.

Restart the container: `docker restart smf` and follow the logs `docker logs --tail 30 -f smf` where you should see `[diam] INFO: CONNECTED TO 'ocs.open5gs.local' (TCP,soc#19): (../lib/diameter/common/logger.c:81)`.
