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
import boto3

    

path = ""

def detect_faces():
    with open(path, 'rb') as image:

        rekognition = boto3.client("rekognition", "us-east-1")
        response = rekognition.detect_faces(Image={'Bytes': image.read()})
        return response['FaceDetails']
        #print(response)
        #print(len(response))

def faceCounter():
    count = 0
    for face in detect_faces():
       count=count+1
    return count

def getAge():



def callback(data):
    mode = data.mode
    path = data.path
    res = "null"
    if (mode == "count"):
        res = faceCounter()
    if (mode == "age"):
        res = getAge()

    return res


def speakListener():
    rospy.init_node('AWS_Rekognition')
    s = rospy.Service('aws_rekognition', aws_rekognition, callback)
    pygame.mixer.pre_init(22050, -16, 1, 4096)
    pygame.init()
    
    rospy.spin()

if __name__ == "__main__":
    speakListener()