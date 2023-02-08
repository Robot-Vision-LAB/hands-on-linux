#!/bin/sh

a=abc 
str=def

echo $a
echo $str
echo ${a}ABC${str}

b=${a}${str}ghi 
echo $b
