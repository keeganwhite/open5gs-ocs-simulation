## Errors and Logs

### Open5GS SMF

Logs:

```
Data Base Updated
Open5GS daemon v2.7.5-24-g8e286b6

06/30 10:00:07.855: [app] INFO: Configuration: '/open5gs/install/etc/open5gs/smf.yaml' (../lib/app/ogs-init.c:144)
06/30 10:00:07.855: [app] INFO: File Logging: '/open5gs/install/var/log/open5gs/smf.log' (../lib/app/ogs-init.c:147)
06/30 10:00:07.887: [metrics] INFO: metrics_server() [http://192.168.250.7]:9091 (../lib/metrics/prometheus/context.c:300)
06/30 10:00:07.952: [app] INFO: Polling freeDiameter stats every 60000000 usecs (../lib/diameter/common/stats.c:77)
06/30 10:00:07.952: [gtp] INFO: gtp_server() [192.168.250.7]:2123 (../lib/gtp/path.c:30)
06/30 10:00:07.952: [gtp] INFO: gtp_server() [192.168.250.7]:2152 (../lib/gtp/path.c:30)
06/30 10:00:07.952: [pfcp] INFO: pfcp_server() [192.168.250.7]:8805 (../lib/pfcp/path.c:30)
06/30 10:00:07.952: [app] INFO: SMF initialize...done (../src/smf/app.c:31)
06/30 10:00:07.952: [smf] INFO: PFCP associated [192.168.250.8]:8805 (../src/smf/pfcp-sm.c:188)
06/30 10:00:10.343: [smf] WARNING: PFCP[REQ] has already been associated [192.168.250.8]:8805 (../src/smf/pfcp-sm.c:286)
06/30 10:03:11.762: [diam] INFO: CONNECTED TO 'ocs.epc.mnc001.mcc001.3gppnetwork.org' (TCP,soc#19): (../lib/diameter/common/logger.c:81)
06/30 10:19:02.494: [smf] INFO: [Added] Number of SMF-UEs is now 1 (../src/smf/context.c:1033)
06/30 10:19:02.494: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:02.494: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.2] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:02.509: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:02.551: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:19:29.226: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:19:29.226: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.2] IPv6:[] (../src/smf/context.c:1693)
06/30 10:19:29.226: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:19:29.226: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:29.226: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.3] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:29.227: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:29.228: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:19:56.019: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:19:56.019: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.3] IPv6:[] (../src/smf/context.c:1693)
06/30 10:19:56.019: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:19:56.019: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:56.019: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.4] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:56.020: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:56.021: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:22.818: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:22.818: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.4] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:22.818: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:22.818: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:22.818: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.5] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:22.819: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:22.820: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:49.561: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:49.561: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.5] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:49.561: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:49.561: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:49.561: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.6] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:49.562: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:49.562: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:50.077: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:50.077: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.6] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:50.077: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:50.077: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:50.077: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.7] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:50.078: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:50.078: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
```

### Open5GS

Logs from SMF:

```
06/30 10:00:07.855: [app] INFO: Configuration: '/open5gs/install/etc/open5gs/smf.yaml' (../lib/app/ogs-init.c:144)
06/30 10:00:07.855: [app] INFO: File Logging: '/open5gs/install/var/log/open5gs/smf.log' (../lib/app/ogs-init.c:147)
06/30 10:00:07.887: [metrics] INFO: metrics_server() [http://192.168.250.7]:9091 (../lib/metrics/prometheus/context.c:300)
06/30 10:00:07.952: [app] INFO: Polling freeDiameter stats every 60000000 usecs (../lib/diameter/common/stats.c:77)
06/30 10:00:07.952: [gtp] INFO: gtp_server() [192.168.250.7]:2123 (../lib/gtp/path.c:30)
06/30 10:00:07.952: [gtp] INFO: gtp_server() [192.168.250.7]:2152 (../lib/gtp/path.c:30)
06/30 10:00:07.952: [pfcp] INFO: pfcp_server() [192.168.250.7]:8805 (../lib/pfcp/path.c:30)
06/30 10:00:07.952: [app] INFO: SMF initialize...done (../src/smf/app.c:31)
06/30 10:00:07.952: [smf] INFO: PFCP associated [192.168.250.8]:8805 (../src/smf/pfcp-sm.c:188)
06/30 10:00:10.343: [smf] WARNING: PFCP[REQ] has already been associated [192.168.250.8]:8805 (../src/smf/pfcp-sm.c:286)
06/30 10:03:11.762: [diam] INFO: CONNECTED TO 'ocs.epc.mnc001.mcc001.3gppnetwork.org' (TCP,soc#19): (../lib/diameter/common/logger.c:81)
06/30 10:19:02.494: [smf] INFO: [Added] Number of SMF-UEs is now 1 (../src/smf/context.c:1033)
06/30 10:19:02.494: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:02.494: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.2] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:02.509: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:02.551: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:19:29.226: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:19:29.226: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.2] IPv6:[] (../src/smf/context.c:1693)
06/30 10:19:29.226: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:19:29.226: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:29.226: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.3] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:29.227: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:29.228: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:19:56.019: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:19:56.019: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.3] IPv6:[] (../src/smf/context.c:1693)
06/30 10:19:56.019: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:19:56.019: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:19:56.019: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.4] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:19:56.020: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:19:56.021: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:22.818: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:22.818: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.4] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:22.818: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:22.818: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:22.818: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.5] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:22.819: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:22.820: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:49.561: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:49.561: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.5] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:49.561: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:49.561: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:49.561: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.6] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:49.562: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:49.562: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:20:50.077: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:20:50.077: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.6] IPv6:[] (../src/smf/context.c:1693)
06/30 10:20:50.077: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:20:50.077: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:20:50.077: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.7] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:20:50.078: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:20:50.078: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:33:53.921: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:33:53.921: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.7] IPv6:[] (../src/smf/context.c:1693)
06/30 10:33:53.921: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:33:53.921: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:33:53.921: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.8] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:33:53.923: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:33:53.963: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:34:21.014: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:34:21.014: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.8] IPv6:[] (../src/smf/context.c:1693)
06/30 10:34:21.014: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:34:21.014: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:34:21.014: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.9] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:34:21.015: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:34:21.016: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:34:48.272: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:34:48.272: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.9] IPv6:[] (../src/smf/context.c:1693)
06/30 10:34:48.272: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:34:48.272: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:34:48.272: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.10] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:34:48.273: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:34:48.273: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:34:48.832: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:34:48.832: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.10] IPv6:[] (../src/smf/context.c:1693)
06/30 10:34:48.832: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:34:48.832: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:34:48.832: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.11] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:34:48.833: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:34:48.834: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:35:15.893: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:35:15.893: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.11] IPv6:[] (../src/smf/context.c:1693)
06/30 10:35:15.893: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:35:15.893: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:35:15.893: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.12] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:35:15.894: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:35:15.895: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:35:42.988: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:35:42.988: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.12] IPv6:[] (../src/smf/context.c:1693)
06/30 10:35:42.988: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:35:42.988: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:35:42.988: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.13] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:35:42.989: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:35:42.990: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:35:43.551: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:35:43.551: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.13] IPv6:[] (../src/smf/context.c:1693)
06/30 10:35:43.551: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:35:43.551: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:35:43.551: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.14] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:35:43.552: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:35:43.552: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
^B06/30 10:49:06.409: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:49:06.409: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.14] IPv6:[] (../src/smf/context.c:1693)
06/30 10:49:06.409: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:49:06.409: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:49:06.409: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.15] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:49:06.410: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:49:06.411: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:49:33.493: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:49:33.493: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.15] IPv6:[] (../src/smf/context.c:1693)
06/30 10:49:33.493: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:49:33.493: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:49:33.493: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.16] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:49:33.494: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:49:33.495: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:49:34.031: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:49:34.031: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.16] IPv6:[] (../src/smf/context.c:1693)
06/30 10:49:34.031: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:49:34.031: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:49:34.031: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.17] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:49:34.032: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:49:34.032: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:50:01.114: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:50:01.114: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.17] IPv6:[] (../src/smf/context.c:1693)
06/30 10:50:01.114: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:50:01.114: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:50:01.114: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.18] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:50:01.116: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:50:01.116: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:50:28.163: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:50:28.163: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.18] IPv6:[] (../src/smf/context.c:1693)
06/30 10:50:28.163: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:50:28.163: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:50:28.163: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.19] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:50:28.164: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:50:28.165: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 10:50:55.225: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 10:50:55.225: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.19] IPv6:[] (../src/smf/context.c:1693)
06/30 10:50:55.225: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 10:50:55.225: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 10:50:55.225: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.20] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 10:50:55.226: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 10:50:55.226: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:04:15.373: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:04:15.373: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.20] IPv6:[] (../src/smf/context.c:1693)
06/30 11:04:15.373: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:04:15.373: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:04:15.373: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.21] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:04:15.374: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:04:15.375: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:04:42.483: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:04:42.483: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.21] IPv6:[] (../src/smf/context.c:1693)
06/30 11:04:42.483: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:04:42.483: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:04:42.483: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.22] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:04:42.484: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:04:42.485: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:04:43.000: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:04:43.000: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.22] IPv6:[] (../src/smf/context.c:1693)
06/30 11:04:43.000: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:04:43.000: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:04:43.000: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.23] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:04:43.001: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:04:43.002: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:05:10.070: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:05:10.070: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.23] IPv6:[] (../src/smf/context.c:1693)
06/30 11:05:10.070: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:05:10.070: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:05:10.070: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.24] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:05:10.071: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:05:10.072: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:05:37.127: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:05:37.127: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.24] IPv6:[] (../src/smf/context.c:1693)
06/30 11:05:37.127: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:05:37.127: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:05:37.127: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.25] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:05:37.128: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:05:37.128: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:05:37.510: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:05:37.510: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.25] IPv6:[] (../src/smf/context.c:1693)
06/30 11:05:37.510: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:05:37.510: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:05:37.510: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.26] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:05:37.511: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:05:37.512: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:05:38.030: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:05:38.030: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.26] IPv6:[] (../src/smf/context.c:1693)
06/30 11:05:38.030: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:05:38.030: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:05:38.030: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.27] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:05:38.031: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:05:38.031: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:06:05.076: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:06:05.076: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.27] IPv6:[] (../src/smf/context.c:1693)
06/30 11:06:05.076: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:06:05.076: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:06:05.076: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.28] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:06:05.078: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:06:05.078: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)
06/30 11:06:05.616: [smf] INFO: OLD Session Will Release [IMSI:001011234567895,APN:internet] (../src/smf/context.c:1407)
06/30 11:06:05.616: [smf] INFO: Removed Session: UE IMSI:[001011234567895] DNN:[internet:0] IPv4:[10.100.0.28] IPv6:[] (../src/smf/context.c:1693)
06/30 11:06:05.616: [smf] INFO: [Removed] Number of SMF-Sessions is now 0 (../src/smf/context.c:3198)
06/30 11:06:05.616: [smf] INFO: [Added] Number of SMF-Sessions is now 1 (../src/smf/context.c:3190)
06/30 11:06:05.617: [smf] INFO: UE IMSI[001011234567895] APN[internet] IPv4[10.100.0.29] IPv6[] (../src/smf/s5c-handler.c:303)
06/30 11:06:05.617: [smf] WARNING: ERROR DIAMETER Result Code(5001) (../src/smf/gx-path.c:888)
06/30 11:06:05.618: [smf] ERROR: Unexpected Diameter Result Code 5001/-1, defaulting to severe network failure (../src/smf/gsm-sm.c:57)

```

### OCS Sigscale

Logs:

```
[os_mon] memory supervisor port (memsup): Erlang has closed
[os_mon] cpu supervisor port (cpu_sup): Erlang has closed
Erlang/OTP 25 [erts-13.1.5] [source] [64-bit] [smp:20:20] [ds:20:20:10] [async-threads:1] [jit:ns]

Eshell V13.1.5  (abort with ^G)
(ocs@ocs.open5gs.local)1> =INFO REPORT==== 30-Jun-2025::08:03:11.764722 ===
    "DIAMETER peer connection state changed"
    service: {ocs_diameter_acct_service,{0,0,0,0},3868}
    event: up
    peer: smf.epc.mnc001.mcc001.3gppnetwork.org
=ERROR REPORT==== 30-Jun-2025::08:19:02.509025 ===
    "DIAMETER AVP unsupported"
    service_name: {ocs_diameter_acct_service,{0,0,0,0},3868}
    capabilities: {diameter_caps,
                      {<<"ocs.epc.mnc001.mcc001.3gppnetwork.org">>,
                       <<"smf.epc.mnc001.mcc001.3gppnetwork.org">>},
                      {<<"epc.mnc001.mcc001.3gppnetwork.org">>,
                       <<"epc.mnc001.mcc001.3gppnetwork.org">>},
                      {[{0,0,0,0}],[{192,168,250,7}]},
                      {50386,0},
                      {<<"SigScale OCS">>,<<"freediameter">>},
                      {[],[1751270407]},
                      {[10415],[5535,10415,13019]},
                      {[4,16777238],[4]},
                      {[0],[0]},
                      {[],[]},
                      {[{'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777238],
                            []}],
                       [{'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777238],
                            []},
                        {'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777272],
                            []}]},
                      {[3439],[10500]},
                      {[],[]}}
    errors: [{5001,
              {diameter_avp,1022,10415,true,false,
                            <<0,0,1,247,192,0,0,16,0,0,40,175,0,0,0,1>>,
                            undefined,undefined,undefined,23}}]
=ERROR REPORT==== 30-Jun-2025::08:19:29.227066 ===
    "DIAMETER AVP unsupported"
    service_name: {ocs_diameter_acct_service,{0,0,0,0},3868}
    capabilities: {diameter_caps,
                      {<<"ocs.epc.mnc001.mcc001.3gppnetwork.org">>,
                       <<"smf.epc.mnc001.mcc001.3gppnetwork.org">>},
                      {<<"epc.mnc001.mcc001.3gppnetwork.org">>,
                       <<"epc.mnc001.mcc001.3gppnetwork.org">>},
                      {[{0,0,0,0}],[{192,168,250,7}]},
                      {50386,0},
                      {<<"SigScale OCS">>,<<"freediameter">>},
                      {[],[1751270407]},
                      {[10415],[5535,10415,13019]},
                      {[4,16777238],[4]},
                      {[0],[0]},
                      {[],[]},
                      {[{'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777238],
                            []}],
                       [{'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777238],
                            []},
                        {'diameter_base_Vendor-Specific-Application-Id',
                            10415,
                            [16777272],
                            []}]},
                      {[3439],[10500]},
                      {[],[]}}
    errors: [{5001,
              {diameter_avp,1022,10415,true,false,
                            <<0,0,1,247,192,0,0,16,0,0,40,175,0,0,0,2>>,
                            undefined,undefined,undefined,23}}]
```

## eNB

Logs:

```
Deploying component: 'enb_zmq'
Active RF plugins: libsrsran_rf_uhd.so libsrsran_rf_soapy.so libsrsran_rf_blade.so libsrsran_rf_zmq.so
Inactive RF plugins:
---  Software Radio Systems LTE eNodeB  ---

Couldn't open , trying /root/.config/srsran/enb.conf
Couldn't open /root/.config/srsran/enb.conf either, trying /etc/srsran/enb.conf
Reading configuration file /etc/srsran/enb.conf...

Built in Release mode using commit ec29b0c1f on branch HEAD.

Opening 1 channels in RF device=zmq with args=fail_on_disconnect=true,tx_port=tcp://192.168.250.22:2000,rx_port=tcp://192.168.250.34:2001,id=enb,base_srate=23.04e6
Supported RF device list: UHD soapy bladeRF zmq file
CHx base_srate=23.04e6
CHx id=enb
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
CH0 rx_port=tcp://192.168.250.34:2001
CH0 tx_port=tcp://192.168.250.22:2000
CH0 fail_on_disconnect=true

==== eNodeB started ===
Type <t> to view trace
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Setting frequency: DL=2660.0 Mhz, UL=2540.0 MHz for cc_idx=0 nof_prb=50
RACH:  tti=341, cc=0, pci=1, preamble=38, offset=0, temp_crnti=0x46
Disconnecting rnti=0x46.
RACH:  tti=4981, cc=0, pci=1, preamble=31, offset=0, temp_crnti=0x47
Disconnecting rnti=0x47.
RACH:  tti=9621, cc=0, pci=1, preamble=44, offset=0, temp_crnti=0x48
Disconnecting rnti=0x48.
RACH:  tti=4021, cc=0, pci=1, preamble=4, offset=0, temp_crnti=0x49
Disconnecting rnti=0x49.
RACH:  tti=8661, cc=0, pci=1, preamble=14, offset=0, temp_crnti=0x4a
Disconnecting rnti=0x4a.
RACH:  tti=9141, cc=0, pci=1, preamble=26, offset=0, temp_crnti=0x4b
Disconnecting rnti=0x4b.
RACH:  tti=6901, cc=0, pci=1, preamble=44, offset=0, temp_crnti=0x4c
Disconnecting rnti=0x4c.
RACH:  tti=1301, cc=0, pci=1, preamble=2, offset=0, temp_crnti=0x4d
Disconnecting rnti=0x4d.
RACH:  tti=6101, cc=0, pci=1, preamble=2, offset=0, temp_crnti=0x4e
Disconnecting rnti=0x4e.
RACH:  tti=6581, cc=0, pci=1, preamble=12, offset=0, temp_crnti=0x4f
Disconnecting rnti=0x4f.
RACH:  tti=981, cc=0, pci=1, preamble=46, offset=0, temp_crnti=0x50
Disconnecting rnti=0x50.
RACH:  tti=5621, cc=0, pci=1, preamble=12, offset=0, temp_crnti=0x51
Disconnecting rnti=0x51.
RACH:  tti=6101, cc=0, pci=1, preamble=9, offset=0, temp_crnti=0x52
Disconnecting rnti=0x52.
RACH:  tti=3861, cc=0, pci=1, preamble=9, offset=0, temp_crnti=0x53
Disconnecting rnti=0x53.
RACH:  tti=8501, cc=0, pci=1, preamble=44, offset=0, temp_crnti=0x54
Disconnecting rnti=0x54.
RACH:  tti=8981, cc=0, pci=1, preamble=39, offset=0, temp_crnti=0x55
Disconnecting rnti=0x55.
RACH:  tti=3381, cc=0, pci=1, preamble=40, offset=0, temp_crnti=0x56
Disconnecting rnti=0x56.
RACH:  tti=8021, cc=0, pci=1, preamble=14, offset=0, temp_crnti=0x57
Disconnecting rnti=0x57.
RACH:  tti=2421, cc=0, pci=1, preamble=23, offset=0, temp_crnti=0x58
Disconnecting rnti=0x58.
RACH:  tti=341, cc=0, pci=1, preamble=11, offset=0, temp_crnti=0x59
Disconnecting rnti=0x59.
RACH:  tti=4981, cc=0, pci=1, preamble=27, offset=0, temp_crnti=0x5a
Disconnecting rnti=0x5a.
RACH:  tti=5461, cc=0, pci=1, preamble=2, offset=0, temp_crnti=0x5b
Disconnecting rnti=0x5b.
RACH:  tti=10101, cc=0, pci=1, preamble=20, offset=0, temp_crnti=0x5c
Disconnecting rnti=0x5c.
RACH:  tti=4501, cc=0, pci=1, preamble=37, offset=0, temp_crnti=0x5d
Disconnecting rnti=0x5d.
RACH:  tti=4821, cc=0, pci=1, preamble=0, offset=0, temp_crnti=0x5e
Disconnecting rnti=0x5e.
RACH:  tti=5301, cc=0, pci=1, preamble=16, offset=0, temp_crnti=0x5f
Disconnecting rnti=0x5f.
RACH:  tti=9941, cc=0, pci=1, preamble=46, offset=0, temp_crnti=0x60
Disconnecting rnti=0x60.
RACH:  tti=181, cc=0, pci=1, preamble=5, offset=0, temp_crnti=0x61
Disconnecting rnti=0x61.
```

## UE

```
[+] Running 1/1
 ✔ Container srsue_zmq  Started                                                                                                             0.0s
 * Removing stale PID file /var/run/dbus/pid.
 * Starting system message bus dbus             [ OK ]
avahi-daemon: unrecognized service
Deploying component: 'ue_zmq'
Active RF plugins: libsrsran_rf_uhd.so libsrsran_rf_soapy.so libsrsran_rf_blade.so libsrsran_rf_zmq.so
Inactive RF plugins:
Couldn't open , trying /root/.config/srsran/ue.conf
Couldn't open /root/.config/srsran/ue.conf either, trying /etc/srsran/ue.conf
Reading configuration file /etc/srsran/ue.conf...

Built in Release mode using commit ec29b0c1f on branch HEAD.

Opening 1 channels in RF device=zmq with args=tx_port=tcp://192.168.250.34:2001,rx_port=tcp://192.168.250.22:2000,id=ue,base_srate=23.04e6
Supported RF device list: UHD soapy bladeRF zmq file
CHx base_srate=23.04e6
CHx id=ue
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
CH0 rx_port=tcp://192.168.250.22:2000
CH0 tx_port=tcp://192.168.250.34:2001
Waiting PHY to initialize ... done!
Attaching UE...
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=38, tti=341, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x46, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 1/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=31, tti=4981, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x47, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 2/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=44, tti=9621, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x48, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 3/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=4, tti=4021, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x49, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 4/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=14, tti=8661, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4a, ta=0
Received Attach Reject. Cause= 11
Received RRC Connection Release (releaseCause: other)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
RRC IDLE
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=26, tti=9141, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4b, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 5/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=44, tti=6901, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4c, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 1/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=2, tti=1301, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4d, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 2/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=2, tti=6101, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4e, ta=0
Received Attach Reject. Cause= 11
Received RRC Connection Release (releaseCause: other)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
RRC IDLE
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=12, tti=6581, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x4f, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 3/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=46, tti=981, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x50, ta=0
Received RRC Connection Release (releaseCause: other)
RRC IDLE
Attach failed (attempt 4/5)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=12, tti=5621, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x51, ta=0
Received Attach Reject. Cause= 11
Received RRC Connection Release (releaseCause: other)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
Current sample rate is 1.92 MHz with a base rate of 23.04 MHz (x12 decimation)
.
Found Cell:  Mode=FDD, PCI=1, PRB=50, Ports=1, CP=Normal, CFO=-0.2 KHz
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
Current sample rate is 11.52 MHz with a base rate of 23.04 MHz (x2 decimation)
RRC IDLE
Found PLMN:  Id=00101, TAC=1
Random Access Transmission: seq=9, tti=6101, ra-rnti=0x2
RRC Connected
Random Access Complete.     c-rnti=0x52, ta=0
```
