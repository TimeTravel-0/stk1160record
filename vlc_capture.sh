
# Audio aktivieren
amixer -c stk1160mixer sset Line unmute cap

echo -n "Name: "
read NAME

CAPTURE_OUT="/home/regina/video_captures/"

cvlc -vvv v4l2:///dev/video1 :v4l2-standard=PAL_D :input-slave=alsa://hw:2,0 :live-caching=300 :file-caching=300  :sout-mux-caching=300 \
 --video-filter=deinterlace --sout='#duplicate{dst=display,dst="transcode{vcodec=h264,acodec=mpga,ab=128,channels=2,samplerate=44100,deinterlace}:std{access=file{no-overwrite},mux=mp4,dst='$CAPTURE_OUT$NAME.mp4'}"}'

#'#duplicate{dst=display,dst="transcode{vcodec=mp4v,acodec=mpga,vb=800, ab=128,deinterlace}:rtp{mux=ts,dst=127.0.0.1,sdp=sap,name="TestStream"}"}' 

#'#transcode{vcodec=h264,acodec=mpga,ab=128,channels=2,samplerate=44100,deinterlace}:std{access=file{no-overwrite},mux=mp4,dst="tmp-foo.mp4"}'

#'#duplicate{dst=display,dst="transcode{vcodec=mp4v,acodec=mpga,vb=800, ab=128,deinterlace}:rtp{mux=ts,dst=127.0.0.1,sdp=sap,name="TestStream"}"}' 



# transcode
# '#transcode{vcodec=h264,acodec=mpga,ab=128,channels=2,samplerate=44100,deinterlace}:std{access=file{no-overwrite},mux=mp4,dst="tmp-foo.mp4"}'


# duplicate 
# #duplicate{dst=display,dst=display}

# duplicate and transcode
#  #duplicate{dst=display,dst='#transcode{vcodec=h264,acodec=mpga,ab=128,channels=2,samplerate=44100,deinterlace}:std{access=file{no-overwrite},mux=mp4,dst="tmp-foo.mp4"}'}
