#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=date +"%Y-%m-%d" -d "$dateFromServer"
echo -e "             • BACKUP PANEL MENU •             "
echo -e "     [01] • AUTO BACKUP      [03] • RESTORE     "
echo -e "     [02] • BACKUP             [04] • LIMIT SPEED "
echo -e "     [00] • GO BACK                              "
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; autobackup ;;
02 | 2) clear ; backup ;;
03 | 3) clear ; restore ;;
04 | 4) clear ; limitspeed ;;
00 | 0) clear ; menu ;;
*) clear ; menu-backup ;;
esac
