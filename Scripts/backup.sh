# The automation script
#!/bin/bash

# Configuration
SOURCE_DIR="/var/www/html/beta"
BACKUP_NAME="xnukernel.zip"
LOCAL_PATH="/backup"
REMOTE_USER="tony"           # Example username
REMOTE_HOST="172.16.238.16" # Example IP for Backup Server
REMOTE_PATH="/backup/"

# 1. Create Zip Archive locally
zip -r $LOCAL_PATH/$BACKUP_NAME $SOURCE_DIR

# 2. Transfer to Remote Backup Server
# (Requires SSH keys to be configured for passwordless transfer)
scp $LOCAL_PATH/$BACKUP_NAME $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

echo "Backup created and synced to Nautilus Backup Server successfully."
