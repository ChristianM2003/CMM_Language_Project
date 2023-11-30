#!/bin/bash 
filename=$(date +%Y-%m-%d-%H%M)
ping -c 10 $1 > assignment6_cmm/ping_output/$filename-ping.txt
