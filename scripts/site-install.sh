#!/bin/sh

# --------------------------------------
# Site configuration.
# --------------------------------------
# Site.
SITE_NAME='Composed Drupal'
SITE_MAIL='site@email.no'

# User.
ACCOUNT_MAIL='name@email.no'
ACCOUNT_PASS='password'

# Database.
DB_USER='username'
DB_PASS='password'
DB_NAME='composed_drupal'
DB_URL='127.0.0.1'
# --------------------------------------

TEXT_FILES=(
  "CHANGELOG.txt"
  "COPYRIGHT.txt"
  "INSTALL.txt"
  "INSTALL.sqlite.txt"
  "INSTALL.pgsql.txt"
  "LICENSE.txt"
  "MAINTAINERS.txt"
  "README.txt"
  "UPGRADE.txt"
)

#
# Remove text files.
#
for FILE in "${TEXT_FILES[@]}"
do
  rm www/"${FILE}"
done

#
# Move into website directory to use Drush.
#
cd www

#
# Drush site install.
#
drush si standard --account-mail=${ACCOUNT_MAIL} --site-mail=${SITE_MAIL} --account-pass=${ACCOUNT_PASS} --site-name="${SITE_NAME}" --db-url=mysql://${DB_USER}:${DB_PASS}@${DB_URL}/${DB_NAME} -y

#
# Enable/disable modules.
#
drush dis overlay toolbar -y
drush en views views_ui admin_menu module_filter -y

