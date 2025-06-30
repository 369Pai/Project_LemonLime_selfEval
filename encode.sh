#!/usr/bin/bash

if [ $# -lt 1 ]; then
	echo "Error: No Password"
	exit
else
	if [ $# -gt 1 ]; then
		echo "Warn: Too many args"
	fi
fi

rm -rf data
mkdir data

cd pretest
dirs=`ls`

echo "Password: $1"
echo "Problems to encode:"
echo $dirs

for d in $dirs; do
	mkdir ../data/$d
	cd $d
	infile=`ls | grep \.in$`
	ansfile=`ls | grep \.ans$`
	echo $infile
	echo $ansfile
	cd ../../data/$d
	for in in $infile; do
		cp ../../pretest/$d/$in $d.in
		zip -P $1 $in $d.in
		rm $d.in
	done
	for ans in $ansfile; do
		cp ../../pretest/$d/$ans $d.ans
		zip -P $1 $ans $d.ans
		rm $d.ans
	done
	cd ../../pretest
done

cd ..

echo "done"
