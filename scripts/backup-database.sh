#!/bin/sh

# --------------------------------------
# Backup database with Drush.
# --------------------------------------

#
# Make a directory for backup file.
#
mkdir database-backup

#
# Move to site directory for Drush.
#
cd www

#
# Backup the database with Drush.
#
drush sql-dump --result-file=../database-backup/dbup.sql
