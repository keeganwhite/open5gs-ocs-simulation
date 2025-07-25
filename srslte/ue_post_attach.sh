#!/bin/bash
# Start srsue in the background
/usr/local/bin/srsue &
SRSUE_PID=$!

# Wait for the UE to get an IP (poll for tun_srsue interface)
for i in {1..30}; do
    if ip addr show tun_srsue &>/dev/null; then
        break
    fi
    sleep 1
done

# Ping the core network or internet to keep session alive
ping -c 10 8.8.8.8 || ping -c 10 192.168.100.1

# Wait for srsue to exit
wait $SRSUE_PID