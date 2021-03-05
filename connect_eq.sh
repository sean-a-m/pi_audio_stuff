#!/bin/bash
jalv.gtk -c filter1_enable=1.0 -c filter3_enable=1.0 -c filter1_type=9 -c filter1_gain=11.00 -c filter1_freq=56.43 -c filter3_gain=2.5 -c filter3_freq=96 -c filter3_type=11 -c filter9_enable=1 -c filter9_gain=4.5 -c filter9_freq=7140.0 http://eq10q.sourceforge.net/eq/eq10qs &
sleep 1
jack_connect system:capture_1 EQ10Q\ Stereo:input1
jack_connect system:capture_2 EQ10Q\ Stereo:input2
jack_connect EQ10Q\ Stereo:output1 system:playback_1
jack_connect EQ10Q\ Stereo:output2 system:playback_2

