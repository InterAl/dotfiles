#!/bin/bash
lsof | awk 'NR>1{arr[$1]++}END{for (a in arr) print a, arr[a]}' | sort -nk2
