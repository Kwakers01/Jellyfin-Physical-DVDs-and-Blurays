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
convert "$f" \
  \( ~/.local/share/scripts/jellyfin-icons/dvd-bd-icons/dvd-black-tm.png -resize 150x150 \) \
  -geometry +30+30 \
  -composite \
  "$f"
   
((counter++))
done
