#!/bin/bash

LOG_FILE="/var/log/auth.log"
REPORT_FILE="blacklist.txt"

echo "[*] Анализирую логи и собираю IP взломщиков..."

# Вытаскиваем IP-адреса из неудачных попыток входа
sudo grep "Failed password" $LOG_FILE | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort -u > $REPORT_FILE

echo "[+] Готово! Список IP сохранен в файл $REPORT_FILE"
