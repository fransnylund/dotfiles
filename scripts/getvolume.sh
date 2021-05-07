#!/bin/bash

volume=$(amixer get Master | grep dB | sed 's/\(^[a-z0-9 :]\+\[\|\[\|\]\)//gi' | awk '{print $1;}')

echo "$volume"

exit 0

