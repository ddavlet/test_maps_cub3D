#!/bin/sh

for filename in ./*; do
    if [ "$filename" != "./replace" ] && [ "$filename" != "./replace.sh" ] && [ "$filename" != "./README.md" ]; then
        ./replace "$filename" "./src/textures/DarkAbstractBackgrounds_03.png" "./src/textures/DarkAbstractBackgrounds_03.png"
		rm "$filename"
        cp "$filename.replace" "$filename"
        rm "$filename.replace"
        ./replace "$filename" "./src/textures/DarkAbstractBackgrounds_06.png" "./src/textures/DarkAbstractBackgrounds_06.png"
		rm "$filename"
        cp "$filename.replace" "$filename"
        rm "$filename.replace"
        ./replace "$filename" "./src/textures/DarkAbstractBackgrounds_09.png" "./src/textures/DarkAbstractBackgrounds_09.png"
		rm "$filename"
        cp "$filename.replace" "$filename"
        rm "$filename.replace"
        ./replace "$filename" "./src/textures/DarkAbstractBackgrounds_010.png" "./src/textures/DarkAbstractBackgrounds_010.png"
        rm "$filename"
        cp "$filename.replace" "$filename"
        rm "$filename.replace"
    fi
done
