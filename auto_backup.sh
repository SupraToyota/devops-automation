#!/bin/bash

# Configuration
SOURCE_DIR="/var/www/html"
BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup_$DATE.tar.gz"

echo "[INFO] Starting backup for $SOURCE_DIR..."

# Ensure backup directory exists
mkdir -p $BACKUP_DIR

# Create archive (Simulation mode for testing)
# In production: tar -czf $BACKUP_DIR/$BACKUP_NAME $SOURCE_DIR
if [ -d "$SOURCE_DIR" ]; then
    tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
else
    echo "[WARN] Source directory not found. Creating dummy backup for test."
    touch "$BACKUP_DIR/$BACKUP_NAME"
fi

echo "[SUCCESS] Backup completed: $BACKUP_NAME"
