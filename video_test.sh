#!/usr/bin/env bash

mplayer tv:// -tv channel=0:driver=v4l2:device=/dev/video0:normid=5:input=0:alsa:adevice=hw.2:brightness=0:contrast=0:hue=0:saturation=0
