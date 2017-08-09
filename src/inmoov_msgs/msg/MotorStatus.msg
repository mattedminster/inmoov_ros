string   joint          # joint name for status frame (populated in motor_status_dispatcher)
uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)
uint8    servoPin       # motor id 0-11
float32  goal           # command position
float32  position       # current sensed position
uint8    smooth         #smooth setting servo is set to
float32  maxSpeed	#max speed setting
float32  presentspeed   # calculated rotational speed
bool     moving         # is servo moving?
uint16   posraw         # raw position sensor value
bool     enabled        # is servo enabled?
bool     power          # does servo have power?
float32  Debug1		#Debug 1
float32  Debug2		#Debug 2
float32  Debug3		#Debug 3


