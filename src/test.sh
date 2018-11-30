#!/bin/bash

compressed_dir="../data/compressed"

for f in $compressed_dir/*
do
	s=${f##*/}
	echo $s
	for g in $f/*
	do
		t=${g##*/}
		echo $t
		stat --printf="%s" "$g"
		echo ""
	done
done
