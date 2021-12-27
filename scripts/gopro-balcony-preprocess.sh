#!/bin/bash

# Pre-processing GoPro balcony videos

## Cropping part 1
ffmpeg -i GH033359.MP4 -vf crop=1600:700:400:380 GH033359_crop.mp4
ffmpeg -i GH043359.MP4 -vf crop=1600:700:400:380 GH043359_crop.mp4
ffmpeg -i GH053359.MP4 -vf crop=1600:700:400:380 GH053359_crop.mp4
ffmpeg -i GH063359.MP4 -vf crop=1600:700:400:380 GH063359_crop.mp4
ffmpeg -i GH073359.MP4 -vf crop=1600:700:400:380 GH073359_crop.mp4

## Cropping part 2
ffmpeg -i GH103359.MP4 -vf crop=1600:700:400:380 GH103359_crop.mp4
ffmpeg -i GH113359.MP4 -vf crop=1600:700:400:380 GH113359_crop.mp4
ffmpeg -i GH123359.MP4 -vf crop=1600:700:400:380 GH123359_crop.mp4
ffmpeg -i GH133359.MP4 -vf crop=1600:700:400:380 GH133359_crop.mp4
ffmpeg -i GH143359.MP4 -vf crop=1600:700:400:380 GH143359_crop.mp4


## concatenate files

### Extract part 1

ffmpeg -f concat -safe 0 -i  gopro-balcony-part1.txt  -c copy gopro-balcony-part1-merged.mp4
ffmpeg -i gopro-balcony-part1-merged.mp4 -ss 00:00:33 -to 00:56:22 -c:v copy -c:a copy gopro-balcony-part1.mp4

### Extract part 2
ffmpeg -f concat -safe 0 -i  gopro-balcony-part2.txt  -c copy gopro-balcony-part2-merged.mp4
ffmpeg -i gopro-balcony-part2-merged.mp4 -ss 00:04:28 -to 00:53:54 -c:v copy -c:a copy gopro-balcony-part2.mp4