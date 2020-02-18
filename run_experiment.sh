#!/bin/bash

seq -f'5  %.0f' 10000000 > log
seq -f'10 %.0f' 10000000 > log2

sort -m -k2 -g log log2 > sorted
awk -f awkscript -- sorted > aggregated
