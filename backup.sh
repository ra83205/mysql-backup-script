#!/bin/bash

# Database settings
DB_USER="username"
DB_PASS="user_password"
DB_NAME="database_name"

# Backup directory settings
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
mkdir -p "$BACKUP_DIR"
fi

# Create backup file name with current date and time
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$DATE.sql"

# Create database backup using mysqldump utility
mysqldump -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_FILE"

# Check if the backup was created successfully
if [ $? -eq 0 ]; then
  echo "Database backup successfully created: $BACKUP_FILE"
else
  echo "Error while creating database backup"
fi
