import os
from musicalgestures import MgObject as Mg

my_videos_folder = 'original/'

my_videos = [my_videos_folder + video for video in os.listdir(my_videos_folder) if os.path.splitext(video)[1] in ['.avi', '.mp4', '.mov', '.mkv', '.MP4']]

for video in my_videos:
    print(f'Processing {video}...')
    my_video = MgObject(video,skip=100)
    my_video.motion().average()
    Mg(video).average()
    Mg(video).videograms()
    Mg(video).waveform()
    Mg(video).spectrogram()
    Mg(video).tempogram()

