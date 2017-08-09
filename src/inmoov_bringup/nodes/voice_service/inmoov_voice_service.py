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
from time import sleep


pub = rospy.Publisher('StartSpeaking', String, queue_size=10)
# Create a client using the credentials and region defined in the [adminuser]
# section of the AWS credentials file (~/.aws/credentials).
session = Session()
polly = session.client("polly")

output = os.path.join(gettempdir(), "inmoov_voice.mp3")
servo_init = False

while servo_init == False:
    if rospy.has_param("inmoov_servo_init"):
        servo_init = True
    else:
        print("Voice Service: Servos are not initialized sleep for 5 seconds and then checking again...")
        sleep(5)
        

voice = rospy.get_param("/inmoov/voice")

def getRemoteFile(toSpeak):
    try:
        # Request speech synthesis
        response = polly.synthesize_speech(Text=toSpeak, OutputFormat="mp3",
                                            VoiceId=voice)
    except (BotoCoreError, ClientError) as error:
        # The service returned an error, exit gracefully
        print(error)
        sys.exit(-1)

    # Access the audio stream from the response
    if "AudioStream" in response:
        with closing(response["AudioStream"]) as stream:
            try:
                # Open a file for writing the output as a binary stream
                with open(output, "wb") as file:
                    file.write(stream.read())
            except IOError as error:
                # Could not write to file, exit gracefully
                print(error)
    else:
        # The response didn't contain audio data, exit gracefully
        print("Could not stream audio")
        

def callback(data):
    toSpeak = data.toSpeak
    getRemoteFile(toSpeak)

    while pygame.mixer.music.get_busy():
       pygame.time.Clock().tick(10)
       sleep(.1)
    pygame.mixer.stop()
    print("playing now: " + str(toSpeak))
    #pygame.mixer.pre_init(22050, -16, 2, 2048)
    
    pygame.mixer.music.load(output)
    pygame.mixer.music.play()
    
    audio = MP3(output)
    #print(output)

    pub.publish(toSpeak)

    pygame.mixer.music.play()

    return (audio.info.length + .5)


def speakListener():
    rospy.init_node('speakListener')
    s = rospy.Service('voicesrv', inmoov_voice, callback)
    pygame.mixer.pre_init(22050, -16, 1, 4096)
    pygame.init()
    
    rospy.spin()

if __name__ == "__main__":
    speakListener()