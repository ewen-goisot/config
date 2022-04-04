#!/bin/zsh

copy () {
	cp $HOME/$f1 $f2
	echo "copied $1 to $2 ($3)"
}


cat file.csv | while IFS=, read -r f0 f1 f2 f3; do
	case $f0 in
		0) ;; #titre ou inactif
		1) copy $f1 $f2 $f3;;
		*) echo "unknown argument 0: $f0";;
	esac
done

