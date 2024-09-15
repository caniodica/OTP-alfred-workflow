#!/bin/bash

# SECRET as arg
secret=$1

# Current OTP
current_token=$(oathtool --totp -b $secret)
echo $current_token

