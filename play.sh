#! /bin/bash
list='radio.txt'
play() {
	len=$(cat $list | wc -l)
	rnd=$((1 + RANDOM % $len))
	station=$(cat $list | sed "$rnd q;d")
	echo Now is playing $station
	mpv $station
}
echo -e "Welcome, press Ctrl+C to change station\nTo quit, press Ctrl+C continuously"
while true; do
play;wait;clear
done
