#!/usr/bin/env bash
sed -i "s/@@GMAPSKEY/$GMAPSKEY/g" /opt/pokemongo-map/credentials.json

STEPS=${STEPS:-5}
AUTHSERVICE=${AUTHSERVICE:-ptc}

python runserver.py -a $AUTHSERVICE -u "$USERNAME" -p "$PASSWORD" -l "$LOCATION" -st $STEPS -H 0.0.0.0 -P 80
