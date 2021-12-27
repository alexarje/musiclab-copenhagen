import musicalgestures as mg

video = mg.MgObject('../data/cooked/virb-beethoven_equirect_crop1.avi')  
video.videograms()
video.average()
video.motion().average()
video.flow.dense(skip_empty=True)
video.audio.waveform()
video.audio.spectrogram()
video.audio.tempogram()
