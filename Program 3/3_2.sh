#!/bin/bash

echo -n "Enter first player: "
read p1
echo -n "Enter their score: "
read s1

echo -n "Enter first player: "
read p2
echo -n "Enter their score: "
read s2

echo -n "Enter first player: "
read p3
echo -n "Enter their score: "
read s3

echo "Player 1 - $p1: $s1"
echo "Player 2 - $p2: $s2"
echo "Player 3 - $p3: $s3"
echo

echo -n "1. "
if [[ $s1 -gt $s2 && $s1 -gt $s3 ]]; then
	echo "$p1: $s1"
	if [ $s2 -gt $s3 ]; then
		echo "2. $p2: $s2"
		echo "3. $p3: $s3"
	else
		echo "2. $p3: $s3"
		echo "3. $p2: $s2"
	fi
elif [ $s2 -gt $s3 ]; then
	echo "$p2: $s2"
	if [ $s1 -gt $s3 ]; then
		echo "2. $p1: $s1"
		echo "3. $p3: $s3"
	else
		echo "2. $p3: $s3"
		echo "3. $p1: $s1"
	fi
else
	echo "$p3: $s3"
	if [ $s1 -gt $s2 ]; then
		echo "2. $p1: $s1"
		echo "3. $p2: $s2"
	else
		echo "2. $p2: $s2"
		echo "3. $p1: $s1"
	fi
fi

