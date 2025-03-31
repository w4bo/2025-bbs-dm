#!/bin/bash
set -exo
for FILE in *.ipynb; do 
    echo "Processing $FILE file...";
    filename=$(basename -- "$FILE")
    extension="${filename##*.}"
    filename="${filename%.*}"
    jupyter nbconvert --execute --to notebook --inplace "$FILE"
done
