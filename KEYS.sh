#!/bin/sh

if [ -e "secret.json" ]; then
  :
else
    touch secret.json
    echo '{
        "email":"YourEmail",
        "username":"YourUsername",
        "platform":"YourPlatform"
    }' >> secret.json

    echo "which are your email from github?"
    read email

    echo "which are your username of your machine?"
    read username

    sed -i "s/YourEmail/$email/g" secret.json
    sed -i "s/YourUsername/$username/g" secret.json

    PLATFORM=$(uname -a)                       
    PC='x86_64'
    PHONE='Android'

    if [[ "$PLATFORM" == *"$PC"* ]]; then
        sed -i "s/YourPlatform/$PC/g" secret.json
    elif [[ "$PLATFORM" == *"$PHONE"* ]]; then
        sed -i "s/YourPlatform/$PHONE/g" secret.json
    else
        echo -e "[UNKNOWN PLATFORM]\n[Aborting...]"
    fi

    echo "--- SECRET FILE CREATED ---"
fi