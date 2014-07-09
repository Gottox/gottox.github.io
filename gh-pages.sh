#! /bin/sh -x
#
# gh-pages.sh
# Copyright © 2014 Enno Boland <eb@s01.de>
#
# Distributed under terms of the MIT license.
#

destbranch=master
pubdir=build
cd "`which $0 | xargs dirname`" || exit $?
rev=`git rev-parse HEAD`

grunt clean || exit $?
git clone -b "$destbranch" . "$pubdir" || exit $?

####################################
## Rebuild

wintersmith build || exit $?

####################################

git -C "$pubdir" add $PWD/"$pubdir"
git -C "$pubdir" commit -m "rebuild based on $rev" || exit $?
git -C "$pubdir" push $PWD "$destbranch" || exit $?

####################################
## Cleanup

grunt clean || exit $?
