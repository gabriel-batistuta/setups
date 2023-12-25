#!/bin/sh

echo "which are your email from github?"
read email

echo "which are your username of your machine?"
read username
sed -i "s/YourEmail/$email/g" KEYS.json
sed -i "s/YourUsername/$username/g" KEYS.json

echo "--- SECRET FILE CREATED ---"
cat KEYS.json