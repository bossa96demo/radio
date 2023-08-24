#! /bin/bash
radio_list='radio.txt'
genre_list='genre.txt'
play() {
	len=$(cat $radio_list | wc -l)
	rnd=$((1 + RANDOM % $len))
	station=$(cat $radio_list | sed "$rnd q;d")
	genre=$(cat $genre_list | sed "$rnd q;d")
	echo Now is playing $station
	echo Genre is $genre
	mpv $station
}
echo -e "Welcome, press Ctrl+C to change station\nTo quit, press Ctrl+C continuously"
while true; do
play;wait;clear
done
