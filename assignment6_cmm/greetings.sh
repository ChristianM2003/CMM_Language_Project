#!/bin/bash

time=$(date +%H)
tgif=$(date +%a)

if [ "$time" -le 12 ]; then
	echo "good morning"
fi

if [ "$time" -gt 12 ] && [ "$time" -le 18 ]; then
	echo "good afternoon"
fi

if [ "$time" -gt 18 ]; then
	echo "good evening"
fi

if [ "$tgif" == "Fri" ]; then
	echo "TGIF"
fi

