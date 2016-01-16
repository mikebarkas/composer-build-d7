# Composer Utility for a Drupal 7 Application

Build and maintain your Drupal 7 site.

This will provide a starting point for building, installing, and maintaining your Drupal 7 project.

> This utility requires [composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

----


### Composer Script Commands

* `post-install-cmd` : Removes unused text files in Web root after install.

* `pre-update-cmd` : Provides a databse dump via Drush before checking for module updates. Set location in script.

### Custom Script Events

* `install-drupal` : Installs Drupal using Drush _site-install_ via a Bash script. See settings in install script.

* `generate-content` : Creates example development content using the _devel-generate_ module. Customize your content in the script.
