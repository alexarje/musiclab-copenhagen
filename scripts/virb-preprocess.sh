#!/bin/bash
#
# Pre-processing VIRB video files

## audience

### crop
ffmpeg -i V0740109.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven1_audience.mp4
ffmpeg -i V0740110.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven2_audience.mp4
ffmpeg -i V0740111.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven3_audience.mp4
ffmpeg -i V0740112.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven4_audience.mp4
ffmpeg -i V0750113.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven5_audience.mp4
ffmpeg -i V0750114.MP4 -vf "v360=input=e:output=e:yaw=-45:v_flip=1:h_flip=1, crop=1300:600:750:1050" virb-beethoven6_audience.mp4

### concatenate files
ffmpeg -f concat -safe 0 -i virb-audience-part1.txt -c copy virb-audience-part1.mp4
ffmpeg -f concat -safe 0 -i virb-audience-part2.txt -c copy virb-audience-part2.mp4

### trim files
ffmpeg -i virb-audience-part1.mp4 -ss 00:18:00 -to 01:25:26 -c:v copy -c:a copy virb-audience-trim-part1.mp4
ffmpeg -i virb-audience-part2.mp4 -ss 00:05:00 -to 00:57:33 -c:v copy -c:a copy virb-audience-trim-part2.mp4

### trim segments
ffmpeg -i virb-audience-trim-part2.mp4 -ss 00:50:45 -to 00:52:32 -c:v copy -c:a copy virb-audience-trim-part2-applause-final.mp4

### anonymization
deface virb-audience-trim-part1.mp4
deface virb-audience-trim-part2.mp4


## musicians

### crop
ffmpeg -i V0740109.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven1.mp4
ffmpeg -i V0740110.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven2.mp4
ffmpeg -i V0740111.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven3.mp4
ffmpeg -i V0740112.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven4.mp4
ffmpeg -i V0750113.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven5.mp4
ffmpeg -i V0750114.MP4 -vf "v360=input=e:output=e:yaw=100:pitch=-50:v_flip=1:h_flip=1, crop=1700:1200:1000:550" virb-beethoven6.mp4


### concatenate files
ffmpeg -f concat -safe 0 -i virb-musicians-part1.txt -c copy virb-musicians-part1.mp4
ffmpeg -f concat -safe 0 -i virb-musicians-part2.txt -c copy virb-musicians-part2.mp4

### trim files
ffmpeg -i virb-musicians-part1.mp4 -ss 00:18:00 -to 01:25:26 -c:v copy -c:a copy virb-musicians-trim-part1.mp4
ffmpeg -i virb-musicians-part2.mp4 -ss 00:05:00 -to 00:57:33 -c:v copy -c:a copy virb-musicians-trim-part2.mp4

### trim segments
ffmpeg -i virb-musicians-trim-part2.mp4 -ss 00:50:45 -to 00:52:32 -c:v copy -c:a copy virb-musicians-trim-part2-applause-final.mp4
  