#!/bin/sh
echo "Starting demo container!"
export POD_ID=$(cat /etc/hostname)
echo "POD ID: ${POD_ID}"
sed -i "s#___pod___#${POD_ID}#" /usr/share/nginx/html/index.html
cat /usr/share/nginx/html/index.html
exec "$@"
