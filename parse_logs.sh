#!/bin/bash

LOG_FILE="/var/log/auth.log"
REPORT_FILE="blacklist.txt"

echo "[*] Analyzing logs..."


sudo grep "Failed password" $LOG_FILE | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort -u > $REPORT_FILE

echo "[+] Done! IP list saved to $REPORT_FILE"
