#!/bin/bash

echo "Welcome to Flip Coin Combination Problem"$'\n'

declare -A singletDict

singleH=0
singleT=0

for (( i = 0; i < 100; i++ )); do
	
	toss=$(( RANDOM%2 ))

	if [[ $toss -eq 0 ]]; then
		singletDict[$i]=0
		((singleH++))
	else
		singletDict[$i]=1
		((singleT++))
	fi

done

echo "Percentage of Heads for Singlet Dictionary: $singleH%"
echo "Percentage of Tails for Singlet Dictionary: $singleT%"$'\n'
