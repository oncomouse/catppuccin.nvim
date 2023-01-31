#!/usr/bin/env bash


for i in $(grep -Ril "[bf]g = C" ./*); do
	sed -i -e "s/, cterm[bf]g = T.\w\+//g" -e "s/\([bf]\)g = C.\(\w\+\)/\1g = C.\2, cterm\1g = T.\2/g" "$i"
done
