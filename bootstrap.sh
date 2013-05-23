#!/bin/sh

# Quick and dirty script to reset everything
# regarding libtool, autoconf, automake, etc.


mkdir m4
mkdir libyara/m4

# Check if libtoolize exists, if not, try with glibtoolize (Mac OS X name it that way)
hash libtoolize &> /dev/null

if [ $? -eq 1 ]; then
    glibtoolize
else
    libtoolize
fi

cd libyara
aclocal
autoheader
automake --add-missing
autoreconf
cd ..

aclocal
autoheader
automake --add-missing
autoreconf

