# Virtualized Open5GS Network with External Accounting Integration

This repository provides resources and documentation for setting up a **virtualized Open5GS network** and linking it to an **external accounting system** (such as SigScale OCS). The primary focus is on 4G (EPC) integration, leveraging open-source tools to create a complete, testable LTE core and radio access network in a virtualized environment.

## Why 4G (EPC) and Not 5G?

Attempts to integrate external online charging (OCS) with 5G (using UERANSIM and Open5GS 5GC) were unsuccessful. The likely reason is architectural:

- **OCS is a component of the 4G EPC architecture** (Gy interface for online charging).
- **5G uses a different charging architecture (CCS)**, and support for this in Open5GS is either incomplete or not yet implemented.
- **UERANSIM is a 5G simulator** and does not natively support 4G/EPC charging flows.

**Recommendation:** Use a 4G setup with srsRAN's eNodeB (eNB) and User Equipment (UE) to connect to Open5GS's MME and EPC. This enables full OCS integration and online charging.

## Components Used

- **Open5GS**: Open-source EPC (Evolved Packet Core) for LTE/4G.
- **SigScale OCS**: External Online Charging System for real-time credit control.
- **srsRAN 4G**: Open-source LTE radio suite (eNB and UE) for simulating RAN and UEs. See [srsRAN 4G Documentation](https://docs.srsran.com/projects/4g/en/latest/).
- **UERANSIM**: Used for 5G testing, but not compatible with 4G OCS flows.

## What This Repo Provides

- **Step-by-step guides** for setting up Open5GS, SigScale OCS, and srsRAN 4G.
- **Configuration examples** for all components.
- **Debugging and validation tips** (e.g., using Wireshark/tcpdump to inspect Diameter Gy traffic).
- **Troubleshooting advice** for common issues.

## Directory Structure

- `4G/` — Guides and configs for 4G/EPC integration (recommended approach).
- `5G/` — Notes and configs for 5G attempts (not recommended for OCS integration).

## Getting Started

1. **5G**: I got the diameter protocol communication to start but could not get the accounting packets to be communicated. To get to this point follow the instructions in `5G/README.md`.
2. **4G Recommended**: follow the instructions in `4G/README.md`.

## Debugging & Validation

- **Wireshark/tcpdump**: Capture and analyze Diameter Gy traffic (see `5G/wireshark.md`).
- **Logs**: Check Open5GS and OCS logs for connection and charging events.
- **srsRAN tools**: Use srsRAN's logging and debugging features to monitor eNB/UE behavior.

## References

- [srsRAN 4G Documentation](https://docs.srsran.com/projects/4g/en/latest/)
- [Open5GS Documentation](https://open5gs.org/open5gs/docs/)
- [SigScale OCS](https://hub.docker.com/r/sigscale/ocs)

---

**Note:** This repository is a living document. Contributions and improvements are welcome, especially for new developments in 5G charging support in Open5GS.
