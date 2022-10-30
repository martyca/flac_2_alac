#!/bin/bash

ffmpeg -f concat -safe 0 -i <(for f in ./*.mp3; do echo "file '$PWD/$f'"; done) -c copy output.mp3
ffmpeg  -i output.mp3 -c:a aac -vn output.m4a
rm output.mp3


