1. Capture Traffic:

- On a host that can see traffic between SMF and OCS (or on the OCS host itself), run:

```bash
sudo tcpdump -i any -s0 -w /tmp/diameter_gy_capture.pcap port 3868
```

note you can replace any with the interface your OCS and Open5GS servers communicate on.

- Trigger UE connection and data usage. Stop capture with Ctrl+C.

2. Open in Wireshark: Open `/tmp/diameter_gy_capture.pcap`.
3. Verify Diameter Peering (CER/CEA):

- Filter: `diameter.cmd.code == 257`
- Check:
  - SMF sends Capability-Exchange-Request (CER) to OCS.
  - OCS replies with Capability-Exchange-Answer (CEA).
  - Auth-Application-Id AVP: Both CER and CEA must contain `Auth-Application-Id = 4` (Diameter Credit Control / Gy).
  - Result-Code AVP in CEA: Should be `DIAMETER_SUCCESS (2001)`.
  - Origin-Host & Origin-Realm should match your configurations.

4. Verify Keep-Alives (DWR/DWA):
   - Filter: `diameter.cmd.code == 280`
   - Check: Regular Device-Watchdog-Request (DWR) from SMF to OCS, and Device-Watchdog-Answer (DWA) from OCS to SMF.
5. Inspect Online Charging Messages (CCR/CCA for Gy):

- Filter: `diameter.cmd.code == 272 && diameter.applicationId == 4`
- If Working:
  - SMF sends Credit-Control-Request (CCR) to OCS when UE session starts/uses data.
  - CC-Request-Type AVP: INITIAL_REQUEST (1), UPDATE_REQUEST (2).
  - Subscription-Id AVP: Contains Subscription-Id-Type = END_USER_IMSI and Subscription-Id-Data with the UE's IMSI.
- OCS replies with Credit-Control-Answer (CCA).
  - Result-Code AVP: DIAMETER_SUCCESS (2001).
  - Granted-Service-Unit AVP: Shows quota granted by OCS.
