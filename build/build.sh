#!/bin/bash

# Jekyll will setup everything for you
#
# Current setup works on nginx, so you'll also need to install it
#
# First you need to clone it: https://github.com/tevvvy1999/website/

jekyll build --source ../mywebsite --destination /var/www/tevarotakamura.website
cp -r ../build /var/www/tevarotakamura.website/
nginx -s reload

chown -R www-data:www-data /var/www/tevarotakamura.website
