#!/bin/bash
1
set -e
set -o pipefail

input=$1
info_plist=$2
output=$PWD/$3

echo "output=$output"
tmp=$(mktemp -d)
echo "tmp=$tmp"
unzip $input -d $tmp
cp $info_plist $tmp/Dart.framework/
cd $tmp
zip -r $output .

