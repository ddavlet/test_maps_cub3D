#!/bin/sh

for filename in ./*; do
    if [ "$filename" != "./replace" ] && [ "$filename" != "./replace.sh" ] && [ "$filename" != "./README.md" ]; then
        ./replace "$filename" "textures/texture-01.png" "./src/textures/DarkAbstractBackgrounds_03.png"
        ./replace "$filename" "textures/texture-02.png" "./src/textures/DarkAbstractBackgrounds_06.png"
        ./replace "$filename" "textures/texture-03.png" "./src/textures/DarkAbstractBackgrounds_09.png"
        ./replace "$filename" "textures/texture-04.png" "./src/textures/DarkAbstractBackgrounds_010.png"
        rm "$filename"
        cp "$filename.replace" "$filename"
        rm "$filename.replace"
    fi
done
