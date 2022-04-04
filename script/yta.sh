#!/bin/bash
# fonctionne sur GNU/Linux (testé), fonctionne probablement sur OS X (non testé)
# si vous constatez une erreur ou voulez suggerer une modification, contactez moi à ewengoisot@laposte.net

# installez youtube-dl (paquet)
# créez un fichier nommé "url" dans le même répertoire que ce script
# lancez le script (cd repertoire; ./nomduscript)

# par defaut, option --no-playlist (pour notamment eviter de telecharger plusieurs fois la meme video)
# mettez un + devant votre url pour activer l'option --yes-playlist
# mettez un # devant votre url pour ne rien en faire

# options par défaut (vous pouvez les changer avec -o/O/i/I/f/n ou en modifiant le script)
thisthis=$0
initial=~/.script
dossier=~/.script
nom="url.txt"
format="mp3"
actualise=""
silence="&1"
silence_erreur="&2"
univ=""
univ_video=""
univ_playlist=""

# -h affiche un message d'aide.
aide () {
	cat $initial/yta_help.txt
	echo foo
}
#	-o : spécifie le répertoire dans lequel seront enregistrés les audios.
output () {
	cd $1 ||
	{
		echo "ERREUR: -o necessite un chemin vers un dossier existant"
		exit 1
	}
	echo "-o : les audios seront enregistres dans le dossier $1"
}
#	-O : comme -o, mais crée le répertoire s'il n'existe pas, au lieu de retourner un message d'erreur.
output_force () {
	cd $1 ||
	{
		mkdir $1 ||
		{
			echo "ERREUR: -O le dossier $1 n'existe pas ET n'a pas pu être créé. Assurez vous de disposer des privilèges nécessaires pour le créer, vérifiez la syntaxe, ou choisissez un autre chemin."
			exit 1
		}
	}
}
#	-i : spécifie le répertoire où se trouve la liste d'URLs.
input () {
	echo "-i : la liste d'URLs est située dans le dossier $1"
	dossier=$1
}
#	-I : spécifie à la fois le chemin et le nom
input_complete () {
	echo "-i : la liste d'URLs est située dans le dossier $1"
	dossier=$(echo $1 | sed "s/\/[^\/]*$//")
	nom=$(echo $1 | sed "s/^.*\/\([^\/]*\)$/\1/")
}
#	-n : permet de choisir un autre nom que \"url\" pour le fichier contenant les URLs.
name_input () {
	echo "-n : la liste d'URLs est située dans le fichier $1"
	nom=$1
}
#	-f : permet de choisir un format éventuellement autre que .mp3 .
format () {
	echo "-f : format choisi: $1"
	format=$1
}
#	-k : active l'actualisation: les URLs seront envoyées vers un fichier *.old.
actualise () {
	echo "les URLs seront transférées vers un fichier *.old"
	actualise="methode_1"
}
silence () {
	echo "les messages de youtube-dl ne seront pas affichés, SAUF en cas d'erreur"
	echo "utilisez l'option -S pour masquer aussi les messages d'erreurs"
	silence="/dev/null"
}
silence_tout () {
	echo "les messages et messages d'erreurs de youtube-dl ne seront pas affichés"
	echo "utilisez l'option -s pour masquer seulement les messages standards"
	silence="/dev/null"
	silence_erreur="/dev/null"
}
universel () {
	echo "tous les telechargements sont affectes par l'option $1"
	univ="$1"
}
universel () {
	echo "tous les telechargements de VIDEOS SEULES sont affectes par l'option $1"
	univ_video="$1"
}
universel () {
	echo "tous les telechargements de PLAYLISTS sont affectes par l'option $1"
	univ_playlist="$1"
}

# lecture des options sélectionées
# vous avez le droit d'être "stupide" et de répéter plusieurs fois certaines options, dans ce cas, snerr, on tient compte du dernier changement.
# les options sont expliquées aux lignes précédantes / dans l'aide
while [[ -n $1 ]] ; do
	case "$1" in
		-h) aide;
			exit 0;;
		-o) output $2;
			shift 2;;
		-O) output_force $2;
			shift 2;;
		-i) input $2;
			shift 2;;
		-I) input_complete $2;
			shift 2;;
		-n) name_input $2;
			shift 2;;
		-f) format $2;
			shift 2;;
		-k) actualise;
			shift;;
		-s) silence;
			shift;;
		-S) silence_tout;
			shift;;
		-u) universel $2;
			shift 2;;
		-uv) universel_video $2;
			shift 2;;
		-up) universel_playlist $2;
			shift 2;;
		*) echo "ERREUR: L'option $1 n'est pas reconnue."; exit 1; break;;
	esac
done

#echo "récapitulatif:
#répertoire du script: $initial
#répertoire des url: $dossier
#fichier des url: $dossier/$nom
#format: $format
#répertoire d'enregistrement des videos:"
#pwd

# vérifications -i / -n
cat $dossier/$nom > /dev/null ||
{
	echo "ERREUR: aucun fichier $nom dans $dossier."
	exit 1
}

# videos seules
echo "telechargement d'une liste d'audios SANS FORMATAGE..."
for var1 in `cat $dossier/$nom | grep '^-[a-zA-Z]' | sed 's/^-//'`;do
	echo "\e[1;33mURL\e[0m: $var1"
	var2=$(youtube-dl --no-playlist -F $var1 | grep "audio only" | sed 's/ .*//' | sed -n "1 p")
	echo "\e[1;33mSHELL\e[0m: youtube-dl  --no-playlist -x -f $var2 \$URL $univ $univ_video"
	youtube-dl  --no-playlist -x -f $var2 $var1 $univ $univ_video 
	echo "fait"
done

echo "telechargement d'une liste d'audios..."
for var1 in `cat $dossier/$nom | grep '^[a-zA-Z]'`;do
	echo "\e[1;33mURL\e[0m: $var1"
	var2=$(youtube-dl --no-playlist -F $var1 | grep "audio only" | sed 's/ .*//' | sed -n "1 p")
	echo "\e[1;33mSHELL\e[0m: youtube-dl  --no-playlist -x -f $var2 --audio-format $format \$URL $univ $univ_video"
	youtube-dl  --no-playlist -x -f $var2 --audio-format $format $var1 $univ $univ_video 
	echo "fait"
done

# playlists NON FORMATEES
echo "telechargement de playlists SANS FORMATAGE"
for var1 in `cat $dossier/$nom | grep '^\+' | sed 's/^\+//'`;do
	echo "\e[1;33mURL\e[0m: $var1"
	var2=$(youtube-dl --yes-playlist -F $var1 | grep "audio only" | sed 's/ .*//' | sed -n "1 p")
	echo "\e[1;33mSHELL\e[0m: youtube-dl  --yes-playlist -x -f $var2 \$URL $univ $univ_video"
	youtube-dl  --yes-playlist -x -f $var2 $var1 $univ $univ_playlist 
	echo "fait"
done
echo "telechargement termine"

# playlists
echo "telechargement de playlists"
for var1 in `cat $dossier/$nom | grep '^\+' | sed 's/^\+//'`;do
	echo "\e[1;33mURL\e[0m: $var1"
	var2=$(youtube-dl --yes-playlist -F $var1 | grep "audio only" | sed 's/ .*//' | sed -n "1 p")
	echo "\e[1;33mSHELL\e[0m: youtube-dl  --yes-playlist -x -f $var2 --audio-format $format \$URL $univ $univ_video"
	youtube-dl  --yes-playlist -x -f $var2 --audio-format $format $var1 $univ $univ_playlist 
	echo "fait"
done
echo "telechargement termine"

# actualisation du fichier $nom
if [[ $actualise = "methode_1" ]]; then
	echo "actualisation de la liste..."
	cd $dossier
	mv $nom.old $nom.temp
	cat $nom.temp $nom > $nom.old
	rm $nom.temp
	echo "" > $nom
	echo "actualisation terminee"
else
	echo "Pas d'actualisation de $nom demandée."
	echo "Utilisez l'option -k pour activer l'actualisation."
fi





#
