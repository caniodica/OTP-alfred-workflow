#!/bin/bash

secret=$1

# Current OTP
current_token=$(oathtool --totp -b $secret)

# Current UTC Time
current_time=$(date +%s)
seconds=0
next_time=$((current_time+1))

# Seconds in date (UTC)
format_date() {
    local time=$1
    date -u -r $time "+%G-%m-%d %H:%M:%S"
}

current_time_converted="$(format_date $current_time) UTC"
next_time_converted="$(format_date $next_time) UTC"

#echo "Current Time: $current_time ($current_time_converted)"
#echo "Next Time: $next_time ($next_time_converted)"
#echo "Current Token (1): $current_token"
#echo "Current Token (2): $(oathtool --totp -b $secret -N "$current_time_converted")"


next_token=$(oathtool --totp -b $secret -N "$next_time_converted")

while [ "$current_token" == "$next_token" ]; do
    seconds=$((seconds+1))
    next_time=$((next_time+1))
    next_time_converted="$(format_date $next_time) UTC"
    next_token=$(oathtool --totp -b $secret -N "$next_time_converted")
    #echo "Next Time: $next_time ($next_time_converted)"
    #echo "Next Token: $next_token"
done
# echo $current_token
echo ${current_token:0:3}•••
echo "Expires in $seconds seconds"

