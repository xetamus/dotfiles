#!/bin/bash

DAYS=('日' '月' '火' '水' '木' '金' '土')
#echo "$(date +"%m/%d")"
echo "[${DAYS[$(date +%w)]}]"
