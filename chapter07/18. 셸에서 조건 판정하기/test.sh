#!/bin/sh

if [ $1 = malt ]
then
    echo Argument is malt.
elif [ $1 = wheat ]
then
    echo Argument is wheat.
else
    echo Argument is neither malt nor wheat.
fi
