#!/bin/bash

echo "Welcome to Flip Coin Combination Problem"$'\n'

declare -A singletDict
declare -A doubletDict

singleH=0
singleT=0

doubleH=0
doubleT=0

for (( i = 0; i < 100; i++ )); do
	
	toss=$(( RANDOM%2 ))

	if [[ $toss -eq 0 ]]; then
		singletDict[$i]=0
		((singleH++))
	else
		singletDict[$i]=1
		((singleT++))
	fi

	toss1=$(( RANDOM%2 ))
	toss2=$(( RANDOM%2 ))
	doubletDict[$i]=$( echo ${toss1}${toss2} )

	if [[ ${doubletDict[$i]} == "00" ]]; then
		((doubleH++))
	elif [[ ${doubletDict[$i]} == "11" ]]; then
		((doubleT++))
	fi

done

echo "Percentage of Heads for Singlet Dictionary: $singleH%"
echo "Percentage of Tails for Singlet Dictionary: $singleT%"$'\n'

echo "Percentage of Heads for Doublet Dictionary: $doubleH%"
echo "Percentage of Tails for Doublet Dictionary: $doubleT%"$'\n'