#!/bin/sh

# --------------------------------------
# Backup database with Drush.
# --------------------------------------

#
# Define database directory and file names.
#
DB_DIRECTORY='database-backup'
TIMESTAMP=$(date "+%Y-%m-%d-%H:%M:%S")
DB_FILENAME="dbup-${TIMESTAMP}.sql"

#
# Make a directory for backup files.
#
if [[ ! -d "${DB_DIRECTORY}" ]]; then
  mkdir "${DB_DIRECTORY}"
fi

#
# Move to site directory for Drush.
#
cd www

#
# Backup the database with Drush.
#
drush sql-dump --result-file=../${DB_DIRECTORY}/${DB_FILENAME}
