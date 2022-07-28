#!/bin/sh

# start ddev, create project, build container
ddev start

# install all packages via composer
ddev composer install

# import basic database
ddev db:import

# update language packs
ddev typo3cms language:update
echo
