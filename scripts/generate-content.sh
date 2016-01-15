#!/bin/sh

# --------------------------------------
#
# Generate content using devel generate.
#
# --------------------------------------

#
# Move to site directory to use Drush.
#
cd www

#
# Devel module is needed.
#
drush en devel devel_generate -y

#
# Generate content.
#
drush generate-content 10 --kill
