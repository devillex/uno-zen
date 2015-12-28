#!/bin/bash

FILES="*.hbs *.md *.html partials/ assets/js/uno-zen.js assets/css/uno-zen.css assets/fonts/ assets/img/"
OUTPUT="uno-zen"

if [ $# -eq 0 ]; then
    echo No argument supplied, using default as archive name.
else
	echo No argument supplied, using that as archive name.
	OUTPUT=$1
fi

echo Using $OUTPUT as archive name.

if [ -f "$OUTPUT.zip" ]; then
    echo Output file $OUTPUT.zip already exists, removing old version.
    rm $OUTPUT.zip
    echo Old version removed.
fi

echo Creating archive.

zip -r $OUTPUT $FILES

echo Done!
