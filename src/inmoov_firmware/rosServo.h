#include <Servo.h>
#include <Arduino.h>

#include "configuration.h"
#include <ros.h>

class rosServo {

  public:
    Servo servo;
    int currentPulse;
    int r;
    
    
    String aTestlog;
    String test();
    
   
    bool feedbackCalibrated;
    int enabled = 0;
    bool hasSensorFeedback;
    float noFeedbackPulse;
    float goalAngle;
    int servoID;
    int servoPin;
    int sensorPin;
    int goalPulse;
    int servoSmoothing;
    float servoMaxSpeed;
    
    float servoMinAngle;
    float servoMaxAngle;
    float servoMinPulse;
    float servoMaxPulse;
    float servoMinSensor;
    float servoMaxSensor;
    float servoRest;
    
    int startPulse;
    int commandPulse;
    int deltaPulse;
    int moveDuration;
    
    int startMillis;
    int deltaMillis;
    long lastUpdate;
    long deltaTime;
    
    bool receivedCommand = false;
    bool moving = false;
    
    int ticksPerSecond = 1500;
    int position = 0;

    int sampleBucket = 0;
    int sampleCount = 0;
    int sampleStartMillis = 0;
    int sampleDuration = 0;
    
    int velocityArc;
    

   
    rosServo(int pin, int sensor, float minAngle, float maxAngle, float rest, int minPulse, int maxPulse, int minSensor, int maxSensor,int smoothing, int maxSpeed);

    void setGoal(float);
    void setGoalPulse(int pulse);

    void setRest(float r);
    float getRest();
    
    int getServoPin();
    void setServoPin(int pin);
    int getSensorPin();
    void setSensorPin(int pin); 
    
    void setMinPulse(short);
    short getMinPulse();
    void setMaxPulse(short);
    short getMaxPulse();
    
    int getGoalPulse();
    float getGoal();
    int getCommandPulse();
    
    void setMinAngle(float);
    float getMinAngle();
    void setMaxAngle(float);
    float getMaxAngle();

    void setMinSensor(int);
    int getMinSensor();
    void setMaxSensor(int);
    int getMaxSensor();


    void setEnabled(int);
    bool getEnabled();

    void moveToMicroseconds(int);
    
    short readPositionRaw();
    float readPositionAngle();
    short readPositionPulse();

    void setMaxSpeed(float);
    float getMaxSpeed();
    float readPresentSpeed();

    
    bool getMoving();

    
    int getSmooth();
    void setSmooth(int);
    
    bool getPower();
    
    void updatePosition(); 
    void update();

    void setupADC();
    



};
