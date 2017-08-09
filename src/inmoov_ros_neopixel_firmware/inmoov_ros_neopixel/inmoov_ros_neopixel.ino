#include <Adafruit_NeoPixel.h>
#include <ros.h>
#include <inmoov_msgs/NeoPixel.h>
#include <inmoov_msgs/NeoPixelSetBrightness.h>



#define PIXEL_PIN    6    // Digital IO pin connected to the NeoPixels.

#define PIXEL_COUNT 24

ros::NodeHandle  nh;

bool fade = false;
int alpha; // Current value of the pixels
int dir = 1; // Direction of the pixels... 1 = getting brighter, 0 = getting dimmer
int flip; // Randomly flip the direction every once in a while
int minAlpha = 25; // Min value of brightness
int maxAlpha = 100; // Max value of brightness
int alphaDelta = 5;

Adafruit_NeoPixel strip = Adafruit_NeoPixel(PIXEL_COUNT, PIXEL_PIN, NEO_GRB + NEO_KHZ800);


void setBright(const inmoov_msgs::NeoPixelSetBrightness::Request & req, inmoov_msgs::NeoPixelSetBrightness::Response & res) {
int bright = req.bright;
strip.setBrightness(bright);
strip.show();
res.response = true;
}

void commandCb( const inmoov_msgs::NeoPixel& command_msg){
  if (command_msg.pixel_red > 0){
    strip.setPixelColor(command_msg.pixelNum,strip.Color(command_msg.pixel_red, command_msg.pixel_green, command_msg.pixel_blue)); 
  }
  if (command_msg.show == 1){
      strip.show();
  }
  if (command_msg.show == -1){
    fade = false;
  }
  if (command_msg.show == -255){
    fade = true;
  }

}


ros::Subscriber<inmoov_msgs::NeoPixel> neopixel("neopixel_cmd", &commandCb);
ros::ServiceServer<inmoov_msgs::NeoPixelSetBrightness::Request, inmoov_msgs::NeoPixelSetBrightness::Response> server("neopixel_brightness", &setBright);
void setup() {
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
  nh.getHardware()->setBaud(115200);
  nh.initNode();

nh.subscribe(neopixel);
nh.advertiseService(server);
//Serial.begin(115200);

while (!nh.connected() ) {
  if (fade == true){
    flip = random(32);
    if(flip > 20) {
    dir = 1 - dir;
    }
    // Some example procedures showing how to display to the pixels:
    if (dir == 1) {
    alpha += alphaDelta;
    }
    if (dir == 0) {
    alpha -= alphaDelta;
    }
    if (alpha < minAlpha) {
    alpha = minAlpha;
    dir = 1;
    }
    if (alpha > maxAlpha) {
    alpha = maxAlpha;
    dir = 0;
    }
    strip.setBrightness(alpha);
  }

  
    nh.spinOnce();
  }

nh.loginfo("NeoPixel Setup!!!");

}


void loop() 
{
    nh.spinOnce();
}




