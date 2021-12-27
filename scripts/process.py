import os
from musicalgestures import MgObject as Mg

my_videos_folder = 'original/'

my_videos = [my_videos_folder + video for video in os.listdir(my_videos_folder) if os.path.splitext(video)[1] in ['.avi', '.mp4', '.mov', '.mkv', '.MP4']]

for video in my_videos:
    print(f'Processing {video}...')
    Mg(video).motion().average()
    Mg(video).average()
    Mg(video).videograms()
    Mg(video).audio.waveform()
    Mg(video).audio.spectrogram()
    Mg(video).audio.tempogram()

