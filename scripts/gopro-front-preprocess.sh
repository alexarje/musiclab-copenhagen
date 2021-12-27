#!/bin/bash

# Pre-processing GoPro Front videos

## Cropping part 1

ffmpeg -i GH035076.MP4 -vf crop=640:280:630:370 GH035076_crop.mp4 
ffmpeg -i GH045076.MP4 -vf crop=640:280:630:370 GH045076_crop.mp4 
ffmpeg -i GH055076.MP4 -vf crop=640:280:630:370 GH055076_crop.mp4
ffmpeg -i GH065076.MP4 -vf crop=640:280:630:370 GH065076_crop.mp4
ffmpeg -i GH075076.MP4 -vf crop=640:280:630:370 GH075076_crop.mp4
ffmpeg -i GH085076.MP4 -vf crop=640:280:630:370 GH085076_crop.mp4


## Cropping part 2 - with slightly different cropping due to camera movement

ffmpeg -i GH015077.MP4 -vf crop=640:280:690:370 GH015077_crop.mp4
ffmpeg -i GH025077.MP4 -vf crop=640:280:690:370 GH025077_crop.mp4
ffmpeg -i GH035077.MP4 -vf crop=640:280:690:370 GH035077_crop.mp4
ffmpeg -i GH045077.MP4 -vf crop=640:280:690:370 GH045077_crop.mp4
ffmpeg -i GH055077.MP4 -vf crop=640:280:690:370 GH055077_crop.mp4


## concatenate files

### Extract part 1

ffmpeg -f concat -safe 0 -i  gopro-front-part1.txt  -c copy gopro-front-part1-merged.mp4
ffmpeg -i gopro-front-part1-merged.mp4 -ss 00:03:30 -to 00:59:20 -c:v copy -c:a copy gopro-front-part1.mp4

### Extract part 2

ffmpeg -f concat -safe 0 -i  gopro-front-part2.txt  -c copy gopro-front-part2-merged.mp4
ffmpeg -i gopro-front-part2-merged.mp4 -ss 00:08:00 -to 00:57:27 -c:v copy -c:a copy gopro-front-part2.mp4


