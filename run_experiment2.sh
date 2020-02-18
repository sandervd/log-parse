#!/bin/bash

zcat LOGS-ACCESS-1.gz |jq -r .data | awk -f logparser | sort | uniq -c > log
zcat LOGS-ACCESS-2.gz |jq -r .data | awk -f logparser | sort | uniq -c > log2


sort -m -k2 log log2 > sorted
awk -f awkscript -- sorted > aggregated
