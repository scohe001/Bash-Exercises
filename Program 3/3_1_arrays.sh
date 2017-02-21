#!/bin/bash

for x in `seq 1 3`; do
	echo -n "Enter player $x: "
	read players[$x]
	echo -n "Enter their score: "
	read scores[$x]
done

for x in `seq 1 3`; do
	echo "Player $x - ${players[x]}: ${scores[x]}"
done


