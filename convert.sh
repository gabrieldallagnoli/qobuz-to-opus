#!/bin/bash

find ./ -name "*.flac" -exec ./to-opus.sh "{}" \;
for d in ~/Music/*/*/'FLAC (16bit-44.1kHz)'; do mv "$d"/* "$(dirname "$d")"; done
rm ~/Music/*/*/*.jpg
rmdir ~/Music/*/*/'FLAC (16bit-44.1kHz)'/
