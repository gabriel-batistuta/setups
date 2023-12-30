#!/bin/sh

echo "which are your email from github?"
read email

echo "which are your username of your machine?"
read username
sed -i "s/YourEmail/$email/g" KEYS.json
sed -i "s/YourUsername/$username/g" KEYS.json

PLATFORM=$(uname -a)                       
PC='x86_64'
PHONE='Android'

if [[ "$PLATFORM" == *"$PC"* ]]; then
    sed -i "s/YourPlatform/$PC/g" KEYS.json
elif [[ "$PLATFORM" == *"$PHONE"* ]]; then
    sed -i "s/YourPlatform/$PHONE/g" KEYS.json
else
    echo -e "[UNKNOWN PLATFORM]\n[Aborting...]"
fi

echo "--- SECRET FILE CREATED ---"