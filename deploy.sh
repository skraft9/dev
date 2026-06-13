#!/bin/bash

# Configuration
RELATIVE_PATH=$1
FILE_NAME=$(basename "$RELATIVE_PATH")
LOCAL_FILE_PATH="$HOME/MISP/$RELATIVE_PATH"
REMOTE_USER="<USERNAME>"
REMOTE_HOST="<TARGET_IP>"
CONTAINER="misp-docker-misp-core-1"

# Sanity Check
if [ -z "$1" ]; then
    echo "[-] Error: Provide a path."
    exit 1
fi

echo "[*] Pushing $FILE_NAME to $REMOTE_HOST..."
scp -q "$LOCAL_FILE_PATH" "$REMOTE_USER@$REMOTE_HOST:/tmp/$FILE_NAME"

echo "[*] Injecting $FILE_NAME into $CONTAINER..."
# Push patches to Docker on REMOTE_HOST via SSH. Then apply patch to Docker.
ssh -q "$REMOTE_USER@$REMOTE_HOST" << EOF
    sudo docker cp /tmp/$FILE_NAME $CONTAINER:/var/www/MISP/$RELATIVE_PATH
    sudo docker exec -u root $CONTAINER chown www-data:www-data /var/www/MISP/$RELATIVE_PATH
EOF

echo "[+] Deployment complete! Go test it."
