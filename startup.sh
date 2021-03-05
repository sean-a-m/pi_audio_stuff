#!/bin/bash
# set up audio injector inputs
alsactl --file /usr/share/doc/audioInjector/asound.state.RCA.thru.test restore
sleep 1
# start jack
#jackd -dalsa -r44100 -n2 -p64 --realtime-priority 70
jackd -R -P 70 -d alsa -r 44100 -n 2 -p 128

