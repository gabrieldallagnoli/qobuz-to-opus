#!/bin/sh

IN="$1"
OUT=${1%.*}.ogg
BITRATE=64k

echo "$IN->$OUT"

ffmpeg -y -loglevel "error" -i "$IN" -vn -acodec libopus -b:a $BITRATE "$OUT"
rm "$IN"
