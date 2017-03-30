#include <string>
class main
{
	public:
		 void enableAllServos();
		 void moveArm(std::string arm, int bicepAngle, int rotateAngle, int shoulderAngle, int omniplateAngle);
void moveHead(int neckUpDownAngle,int neckRotateAngle,int jawAngle,  int eyesXAngle, int eyesYAngle);
void speak(std::string toSpeak);
void moveNeck(int neckRotateAngle, int neckUpDownAngle);
void moveHand(std::string hand,int thumbAngle, int indexAngle, int middleAngle, int ringAngle, int pinkyAngle, int wristAngle);
void moveTorso(int tiltTorsoAngle, int rotateTorsoAngle);
		
};
