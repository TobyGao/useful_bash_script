#!/usr/bin/env bash
sed ':a N;s/\n/ /; ba' $1 | sed 's/[ \t][ \t]*/\n/g' | sort | uniq -c | sort -nr | awk '{print $2" "$1}'
