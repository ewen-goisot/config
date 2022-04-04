#!/usr/bin/zsh

cat $* |
sed "s/[^[:alpha:]'-]\+/\n/g" | sed "/^$/d" |
tr '[:upper:]' '[:lower:]' | sort |
awk 'BEGIN{mot=""; i=0; j=0;}
/^[a-zéèàçùñæœôâîûêÿöäïüë]/{
	j++;
	if (mot==$1){
		i++;
	}else{
	if(i>0){printf("%s\t%d\n", mot, i);}
		mot=$1;
		i=1;
	}
}
END{printf("%s %d\n\"total:\t%d", mot, i, j);}' |
sort -k2 -rn |
awk '/^"/{j=$2; k=0; n=0;}
/^[^"]/{i=$2; k+=i; n++; printf("%5d\t%s\t%.3f\t%.3f\t%d\t%d\n", n, $1, 100*i/j, 100*k/j, i, k)}'

echo -n "\" vim"
echo ": ts=16: nolist"

