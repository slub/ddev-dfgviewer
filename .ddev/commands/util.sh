#!/usr/bin/env bash

# Try "realpath" when it is available, or use a simple polyfill (on Mac)
function realpath() {
    result="$(command realpath $1 2> /dev/null)"
    if [[ $? = 0 ]]; then
        echo $result
    elif [[ $1 = /* ]]; then
        echo "$1"
    else
        echo "$PWD/${1#./}"
    fi
}

function file_or_default()
{
    if [ -z $1 ]; then
        SCRIPTDIR=$(dirname "$0")
        DBFILE=$2
    else
        DBFILE=$1
    fi

    realpath "$DBFILE"
}

function db_file()
{
    file_or_default $1 "dfg-viewer.sql"
}
