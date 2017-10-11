#!/usr/bin/sh

chapters_dir=$1

for file in ${chapters_dir}/*.tex
do
    echo "\\include{${file%.*}}"
done

