#!/bin/bash

export LANG=zh_CN.utf8
export LANGUAGE=zh_CN.utf8
export LC_ALL=zh_CN.utf8
export DISPLAY=:1
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export PULSE_SERVER=tcp:127.0.0.1:4713
Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile /tmp/xdummy.log -config /usr/share/X11/xorg.conf.d/xorg.conf :1 &
sleep 2
#x11vnc -forever -usepw -create -display :1 -rfbport 5940 &
#sleep 2
startlxde &
sleep 2
lxpanelctl exit
pulseaudio -nF /etc/pulse/default.pa &
xcompmgr -n
