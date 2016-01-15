#!/bin/sh

# --------------------------------------
# Post install cleanup.
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
