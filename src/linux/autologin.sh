#!/bin/bash
while true
do
jsondata=$(curl -s https://hotspot.vodafone.de/api/v4/session)
session=${jsondata:18:32}
nichts=$(curl -s "https://hotspot.vodafone.de/api/v4/login?loginProfile=6&accessType=termsOnly&sessionID=${session}&action=redirect&portal=bayern")
sleep 10
done
