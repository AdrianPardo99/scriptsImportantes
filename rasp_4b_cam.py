#!/usr/bin/env python3

# @author Adrian Gonzalez Pardo
# Python version 3.7.3

import sys
from picamera import PiCamera
from time import sleep

if len(sys.argv)<2:
    print(f'Usage: {sys.argv[0]} <file_exit_picture>')
    sys.exit(1)

file_exit=sys.argv[1]
camara=PiCamera()
camara.start_preview()
sleep(5)
camara.capture(file_exit)
camara.stop_preview()
