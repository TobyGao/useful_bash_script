#!/usr/bin/env bash
for i in `seq $(head -n1 $1 | wc -w)`; do
    cut -f$i -d' ' file.txt | sed ':t;N;s/\n/ /;bt'
done
