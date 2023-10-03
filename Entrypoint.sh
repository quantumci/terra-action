#!/bin/sh -l

cat $1
echo "$2" >> $GITHUB_OUTPUT
echo "$3" >> $GITHUB_OUTPUT
echo "$4" >> $GITHUB_OUTPUT
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

