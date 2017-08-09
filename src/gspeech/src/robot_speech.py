#!/usr/bin/env python
# Copyright 2016 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Google Cloud Speech API sample application using the REST API for batch
processing."""

# [START import_libraries]
import argparse
import base64
import json
import os
import rospy
from std_msgs.msg import String
from googleapiclient import discovery
import httplib2
from oauth2client.client import GoogleCredentials
# [END import_libraries]


# [START authenticating]
DISCOVERY_URL = ('https://{api}.googleapis.com/$discovery/rest?'
                 'version={apiVersion}')


# Application default credentials provided by env variable
# GOOGLE_APPLICATION_CREDENTIALS
def get_speech_service():
    credentials = GoogleCredentials.get_application_default().create_scoped(
        ['https://www.googleapis.com/auth/cloud-platform'])
    http = httplib2.Http()
    credentials.authorize(http)

    return discovery.build(
        'speech', 'v1beta1', http=http, discoveryServiceUrl=DISCOVERY_URL)
# [END authenticating]


def main():
    """Transcribe the given audio file.
    
    Args:
        speech_file: the name of the audio file.
    """
    # [START construct_request]

    #record file
    #set speech file
    rospy.init_node('robot_speech')
    
    
    while not rospy.is_shutdown():
        loopSpeech()

def loopSpeech():
    pubs = rospy.Publisher('speechReg', String, queue_size=10)
    os.system('sox -r 16000 -c 1 -t alsa default /tmp/robot_recording.flac silence 1 0.1 1% 1 1.5 1%')
    speech_file = "/tmp/robot_recording.flac"  
    
    with open(speech_file, 'rb') as speech:
        # Base64 encode the binary audio file for inclusion in the JSON
        # request.
        speech_content = base64.b64encode(speech.read())

    service = get_speech_service()
    service_request = service.speech().syncrecognize(
        body={
            'config': {
                # There are a bunch of config options you can specify. See
                # https://goo.gl/KPZn97 for the full list.
                'encoding': 'FLAC',  # raw 16-bit signed LE samples
                'sampleRate': 16000,  # 16 khz
                # See http://g.co/cloud/speech/docs/languages for a list of
                # supported languages.
                'languageCode': 'en-US',  # a BCP-47 language tag
            },
            'audio': {
                'content': speech_content.decode('UTF-8')
                }
            })
    # [END construct_request]
    # [START send_request]
    response = service_request.execute()
    print(json.dumps(response))
    data = json.loads(json.dumps(response))
    for item in data['results']:
        for item2 in item['alternatives']:
          parsedResponse = item2['transcript']


    #print(data['results'][0]['alternatives'])
    pubs.publish(parsedResponse)
    os.remove(speech_file)
    # [END send_request]
    #speech.close()

# [START run_application]
if __name__ == '__main__':
    main()
    # [END run_application]