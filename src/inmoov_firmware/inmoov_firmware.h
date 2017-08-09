#include "LinkedList.h"
#include "rosServo.h"


class inmoov_firmware{
public:
  
  rosServo* getDevice(int id);
  void addDevice(rosServo* servo);

};
