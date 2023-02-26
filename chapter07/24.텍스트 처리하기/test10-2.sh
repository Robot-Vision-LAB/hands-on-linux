#!/bin/bash

while [$# -gt 0]; do
	src=$1
	shift

	name=${src%.*}
	ext=${src##*.}
	
	dst$name.jpg
	if [$ext=jpeg]; then
		echo rename $src to $dst
		mv $src $dst
	fi
done
