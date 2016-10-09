#!/usr/bin/env bash

amixer -c stk1160mixer sset Line unmute cap

mplayer  tv:// -tv driver=v4l2:normid=5:input=0:device=/dev/video1:chanlist=us-cable:alsa:adevice=hw.2,0:amode=2:audiorate=48000:forceaudio:immediatemode=0
#  -vf harddup -mc 0 -framedrop 
