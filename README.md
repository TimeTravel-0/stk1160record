# stk1160record

I've got a bunch of old VHS tapes I want to capture, so I got an cheap stk1160 based video grabber (mumbi brand) for ~10 Eur as its chipset is supported by Linux.

Of course, it does not work OOTB (no sound).

Here you can find some scripts I just copy/pasted together to get it going. Audio, video and av test scripts (they just show the grabber input on screen / play audio back).

The video capture script from fernmeldung.de was modified to work with V4L2 and stk1160 on my current Lenovo Thinkpad T420 running Linux hal9000 3.16.0-4-amd64 #1 SMP Debian 3.16.7-ckt25-2+deb8u3 (2016-07-02) x86_64 GNU/Linux.



These scripts are based on the following pages:

* http://www.fernmeldung.de/capture/
* https://wiki.ubuntuusers.de/EasyCAP_DC60_USB_Audio_und_Videograbber/
* http://easycap.blogspot.de/p/recording.html
* http://www.engon.de/audio/vhs0.htm
* https://www.linuxtv.org/wiki/index.php/MEncoder
* https://www.linuxtv.org/wiki/index.php/V4L_capturing
