#!/bin/bash

LOG_DIR="/opt/logs"
mkdir -p $LOG_DIR

# Pornim capturare de rețea
tshark -i any -w $LOG_DIR/network_capture.pcap &

# Scanare YARA și ClamAV periodică
while true; do
    echo "Running YARA scan..." >> $LOG_DIR/scan.log
    yara -r /yara-rules/ $HOME >> $LOG_DIR/yara_scan.log 2>&1

    echo "Running ClamAV scan..." >> $LOG_DIR/scan.log
    clamscan -r $HOME >> $LOG_DIR/clamav_scan.log 2>&1

    echo "Listing active processes..." >> $LOG_DIR/processes.log
    ps aux >> $LOG_DIR/processes.log

    sleep 300  # Așteptăm 5 minute înainte de următorul ciclu
done

