#!/bin/bash

if test "$USER" != "root" 
then
{
    clear
    echo "You are not root"
}
else
{
    clear
    echo "You are root"
}
fi

# if [[ -n "$1" && "$1" -gt 300 ]]; then
#     echo "Over Budget"
# fi

if [[ -d $1 ]] ; then
    echo "Directory exist"
fi

if [[ -f $1 && -e $1 ]] ; then
    echo "File exist"
fi

if [[ -h $1 ]] ; then
    echo "Is a symlink"
fi

test 32 -gt 4 && echo "Yes it is." || echo "No it is not!"


citycode="hfx"
projdays=4

if test $citycode = "hfx" && test $projdays -gt 39; then
    echo "All true."; fi


if test $citycode = "hfx" || test $projdays -gt 39; then
    echo "Either one is true."; fi
    