echo Lien de la vidéo ?
read link
echo Couper à partir de HH.MM.SS
read cut_start
echo Durée en seconde ?
read cut_end
echo Nom du fichier ?
read filename
youtube-dl -q --format mp4 $link -o to_cut_video.mp4
ffmpeg -ss $cut_start -i to_cut_video.mp4 -t $cut_end -c copy $filename.mp4
rm ./to_cut_video.mp4
youtube-dl --rm-cache-dir
# echo Le fichier $filename.mp3 à bien été créé !