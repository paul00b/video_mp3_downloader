echo Lien de la vidéo ?
read link
youtube-dl -q $link -x --audio-format mp3 --output "to_cut.%(ext)s"
echo Nom du fichier ?
read filename
echo Couper à partir de 
read cut_start
ffmpeg -i ./to_cut.mp3 -ss $cut_start -t 26 -acodec copy $filename.mp3
rm to_cut.mp3
echo Le fichier $filename.mp3 à bien été créé !