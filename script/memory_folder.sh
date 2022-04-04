#!/usr/bin/zsh

#du -bsx ./* |
#sort -n |
#sed "s/^\([0-9]\+\)\([0-9]\{3\}\)[0-9]\{6\}\t/\1.\2G\t/;
#s/^\([0-9]\+\)\([0-9]\{3\}\)[0-9]\{3\}\t/\1.\2M\t/;
#s/^\([0-9]\+\)\([0-9]\{3\}\)\t/\1.\2K\t/;
#s/\(^[^\t]\{2,7\}\)\t/\1\t\t/;
#s#\t./#  #" |
#tail -20

lines=$(( $(stty -a <"$(tty)" | grep -Po '(?<=rows )\d+') - 2 ))
columns=$(( $(stty -a <"$(tty)" | grep -Po '(?<=columns )\d+') - 2 ))

(

du -bsx ./*/ $(ls -p | grep -v /) 2>/dev/null |
	sort -rn |
	head -n $(( $lines * 2 )) |
	sed "s#\t./# #" |
	awk -v columns=$columns -v lines=$lines '{ if($1>10^9){printf("%7.3fG", $1/10^9)}
else if($1>10^6){printf("%7.3fM", $1/10^6)}
else{printf("%7.3fK", $1/10^3)} if(length($2) <= columns/6 - 11){print "  " $2}
else{print "  " substr($2, 0, columns/6 - 13) "*" substr($2, length($2), 1)} }
END{for(i=0; i<2*lines-NR; i++){printf(" \n")} }' |
	pr -t -2 -w $(( $columns / 3 )) | expand

du -bsx ./*/* 2>/dev/null |
	sort -rn |
	head -n $lines |
	sed "s#\t./# #" |
	awk -v lines=$lines '{ if($1>10^9){printf("%7.3fG", $1/10^9)} else if($1>10^6){printf("%7.3fM", $1/10^6)} else{printf("%7.3fK", $1/10^3)} print "  " $2}
END{for(i=0; i<lines-NR; i++){printf(" \n")} }'

du -bsx ./*/*/* 2>/dev/null |
	sort -rn |
	head -n $lines |
	sed "s#\t./# #" |
	awk -v lines=$lines '{ if($1>10^9){printf("%7.3fG", $1/10^9)} else if($1>10^6){printf("%7.3fM", $1/10^6)} else{printf("%7.3fK", $1/10^3)} print "  " $2}
END{for(i=0; i<lines-NR; i++){printf(" \n")} }'

) | pr -t -3 -w $columns |
	sed "s/[0-9]\+\.[0-9]\{3\}[KGM]/[033m&[0m/g; s#/[^/ ]*/#&[035m#; s#  [^/ ]*/#&[036m#g; s# [^/ ]*/#[034;1m&[0m#g"

