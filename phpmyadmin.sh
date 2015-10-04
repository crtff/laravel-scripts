#!/bin/bash

cd ~/Code

echo 'Downloading PhpMyAdmin 4.5.0.2'
curl -#L https://files.phpmyadmin.net/phpMyAdmin/4.5.0.2/phpMyAdmin-4.5.0.2-english.tar.gz -o phpmyadmin.tar.gz

echo 'Installing PhpMyAdmin 4.5.0.2 into ~/Code'
mkdir phpmyadmin && tar xf phpmyadmin.tar.gz -C phpmyadmin --strip-components 1
rm phpmyadmin.tar.gz

echo 'Enabling pma.app'
sudo serve pma.app $(pwd)/phpmyadmin
