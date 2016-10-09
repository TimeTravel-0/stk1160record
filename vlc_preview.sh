cvlc -vvv v4l2:///dev/video1 :v4l2-standard=PAL_D :input-slave=alsa://hw:2,0 :live-caching=300 --video-filter=deinterlace
