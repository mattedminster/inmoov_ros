#!/usr/bin/env python
from boto3 import Session
from botocore.exceptions import BotoCoreError, ClientError
from contextlib import closing
import os
import rospy
import sys
import subprocess
from tempfile import gettempdir
from std_msgs.msg import String
from inmoov_msgs.srv import *
import pygame
from mutagen.mp3 import MP3



def callback(data):
    soundLocation = data.location
    if not os.path.exists(soundLocation):
        print("Can not play sound file not found: " + str(soundLocation))
        return 0

    while pygame.mixer.music.get_busy():
       pygame.time.Clock().tick(10)

    print("playing file at this location : " + str(soundLocation) + " now")
    
    pygame.mixer.music.load(soundLocation)
    pygame.mixer.music.play()
    
    audio = MP3(soundLocation)

    pygame.mixer.music.play()
    print("play1")
    #pygame.time.wait(audio.info.length)
    print("play2")
    return (audio.info.length + .1)


def speakListener():
    rospy.init_node('soundPlayListener')
    s = rospy.Service('soundPlaySrv', inmoov_sound_play, callback)
    pygame.init()
    pygame.mixer.init()
    rospy.spin()

if __name__ == "__main__":
    speakListener()