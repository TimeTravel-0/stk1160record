#!/usr/bin/env bash
# this is for STK1160 with external audio codec (48kHz)
echo "checking for available audio bitrate from device"
sudo lsusb -v -d 05e1:0408 | grep tSamFreq | sed -e "s,^.* ,," 

echo "unmuting stk1160 mixer"
amixer -c stk1160mixer sset Line unmute cap

echo "creating loopback from stk1160 to first soundcard, play some sound on your video source"
echo "plughw:2,0 applies to thinkpads/laptops with internal HDMI (so this is soundcard 1) - soundcard 2 is usb capture device"
arecord -D plughw:2,0 -f S16_LE -r 48000 | aplay -D plughw:0,0 -f S16_LE -r 48000
