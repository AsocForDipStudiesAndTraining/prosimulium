#!/bin/bash
# Use my composer to update my civicrm version
echo "Updating CiviCRM Codebase using composer."
cd /var/www/drupal
sudo -u drupal composer update civicrm/civicrm-core civicrm/civicrm-drupal-8 roundearth/civicrm-composer-plugin --with-dependencies
cv upgrade:db
chown -R www-data:www-data web/sites/default/files/civicrm
echo 'RewriteEngine Off' > /var/www/drupal/web/libraries/civicrm/extern/.htaccess
