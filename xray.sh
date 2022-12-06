#!/bin/sh
if [ ! -f UUID ]; then
  UUID="741745a0-feff-4eb6-82c7-29024335ab22"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

