#!/usr/bin/env bash
sed -i "s/@@GMAPSKEY/$GMAPSKEY/g" /opt/pokemongo-map/credentials.json

STEPS=${STEPS:-5}
AUTHSERVICE=${AUTHSERVICE:-ptc}

python example.py -a $AUTHSERVICE -u "$USERNAME" -p "$PASSWORD" -l "$LOCATION" -st $STEPS -H 0.0.0.0 -P 80 -dp -dg
