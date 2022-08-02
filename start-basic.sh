#!/usr/bin/env bash
set -e

function checkout()
{
    REPO=$1
    BRANCH=$2
    TARGET=$3

    if [ -z "$(ls -A \"$TARGET\" 2> /dev/null)" ]; then
        echo -e "\033[0;32mClone $REPO into $TARGET\033[0m"
        git clone -b "$BRANCH" "$REPO" "$TARGET"
    else
        echo -e "\033[0;32mSwitch to branch '$BRANCH' in $TARGET\033[0m"
        (cd "$TARGET" && git switch "$BRANCH")
    fi
}

# clone repositories
mkdir -p extensions/
checkout https://github.com/dvoracek-slub/kitodo-presentation sprint extensions/kitodo-presentation
checkout https://github.com/dvoracek-slub/slub_digitalcollections sprint extensions/slub_digitalcollections/
checkout https://github.com/dvoracek-slub/dfg-viewer sprint extensions/dfg-viewer/

# start ddev, create project, build container
ddev start

# install all packages via composer
ddev composer install

# import basic database
ddev db:import

# update language packs
ddev typo3cms language:update
echo
