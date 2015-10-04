#!/bin/bash

echo 'Downloading PhpMyAdmin 4.5.0.2'
curl -#L https://files.phpmyadmin.net/phpMyAdmin/4.5.0.2/phpMyAdmin-4.5.0.2-english.tar.gz -o phpmyadmin.tar.gz

echo 'Installing PhpMyAdmin 4.5.0.2 into '$(pwd)
mkdir phpmyadmin && tar xf phpmyadmin.tar.gz -C phpmyadmin --strip-components 1
rm phpmyadmin.tar.gz

echo 'Enabling pma.app'
sudo bash /vagrant/scripts/serve-hhvm.sh serve pma.app $(pwd)/phpmyadmin
