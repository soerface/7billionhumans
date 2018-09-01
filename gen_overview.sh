#!/bin/bash

echo "| ID | Name | Size</br>Challenge | Size</br>global | Size</br>local | Speed</br>Challenge | Speed</br>global | Speed</br>local |
|:--- |:--- |:---------:|:------:|:-----:|:---------:|:------:|:-----:|" > overview.md
if [ ! -f onlinestats.txt ]; then
	curl -s https://tomorrowcorporation.com/7billionhumansStats/ | grep "\(commands\|seconds\|class=.row.\)" | sed 's|^\t*||;s|<div id=.||;s|. class=.row.*||;s| .*||' > onlinestats.txt
fi

for s in {01..69}; do
	i=$(echo $s | sed 's/^0//')
	echo -n '|' $i '| ' >> overview.md
	name=$(grep "^${i}_" onlinestats.txt | sed 's/^..\?_//')
	if [ -z "$name" ]; then
		echo "VIDEO SEQUENCE | | | | | | |" >> overview.md
		continue
	fi
	echo -n "$name" >> overview.md
	echo -n ' | ' >> overview.md
	sed -e "1,/${i}_/d" onlinestats.txt | head -n2 | tr '\n' '|' >> overview.md
	grep "\-\- Size:" *size/$s\ \-\ * 2> /dev/null | sed 's|^.* ||' | sort | head -n1 | tr '\n' ' ' >> overview.md
	echo -n ' | ' >> overview.md
	sed -e "1,/${i}_/d" onlinestats.txt | head -n4 | tail -n2 | tr '\n' '|' >> overview.md
	grep "\-\- Speed:" speed*/$s\ \-\ * 2> /dev/null | sed 's|^.* ||' | sort | head -n1 | tr '\n' ' ' >> overview.md
	echo " |" >> overview.md
done | head

