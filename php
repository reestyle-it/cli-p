#!/bin/bash

# This is a wrapper for PHP, please run php from here

source "$(dirname "$0")/include.sh";

VER=$(<~/bin/php.ver)
PHPVER=${VER:-7.4}

echo "Using PHP version $PHPVER - to change, use php-setver [version]"
echo ""

$MYDIR/bin/php-$PHPVER/php.exe -c $MYDIR/bin/php/php-$PHPVER "$@"

