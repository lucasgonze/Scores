#!/bin/bash

#exec /Applications/LilyPond.app/Contents/Resources/bin/lilypond "$@"

# The scripts — such as lilypond-book, convert-ly, abc2ly, and even lilypond itself — are included inside the
# .app file for MacOS X. Scripts can also be run from the command line by invoking them directly:
# path/to/LilyPond.app/Contents/Resources/bin/lilypond
# The same is true for all other scripts in that directory, such as lilypond-book and convert-ly.

LY=/Applications/LilyPond.app/Contents/Resources/bin/lilypond
TMPFILE=`mktemp /tmp/foo-XXXXXX` || exit 1

SRC="$1"
rootname=`basename "$SRC" | awk -F\. '{print $1}'`
dir=`dirname "$SRC"`

if [ "$2" = "svg" ]
then
    $LY -dbackend=svg "$SRC"
    newname=$dir/$rootname.svg
elif [ "$2" = "png" ]
then
    $LY --output="$TMPFILE" "$SRC"
    newname=$dir/$rootname.png
    convert -trim "$TMPFILE" "$newname"
else
    $LY "$SRC"
    newname=$dir/$rootname.pdf
fi

open "$newname"

