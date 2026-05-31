#!/usr/bin/bash

counter=1

while [ "$counter" -le "$#" ]; do

    f="${!counter}"

    [ -f "$f" ] || continue  # Skip if no files match

#Backup original file
FILE="$f-orig"

if [ ! -f "$FILE" ]; then
  cp "$f" "$f-orig"  
fi

#resize file
convert "$f-orig" -resize 1000x1500! "$f"

#overlay icon
composite -gravity NorthWest -geometry 165x165+30+30 "~/.local/share/dvd-apps/dvd-bluray-icons/icons/bluray-white-tm.png" "$f" "$f"
   
((counter++))
done
