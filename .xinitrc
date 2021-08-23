#!/usr/bin/env bash

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources


[ -f ~/.xprofile  ] && . ~/.xprofile


exec dwm
