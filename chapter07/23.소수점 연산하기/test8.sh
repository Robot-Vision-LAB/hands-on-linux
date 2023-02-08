#! /bin/sh

a=5.7
b=3.2

echo $a '*' $b = 'echo "scale=20; $a*$b" | bc'
echo $a / $b = 'echo "scale=20; $a/$b" | bc'
