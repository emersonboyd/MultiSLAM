;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_msgs::SensorState)
  (if (not (find-package "TURTLEBOT3_MSGS"))
    (make-package "TURTLEBOT3_MSGS"))
  (shadow 'SensorState (find-package "TURTLEBOT3_MSGS")))
(unless (find-package "TURTLEBOT3_MSGS::SENSORSTATE")
  (make-package "TURTLEBOT3_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BUMPER_RIGHT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_RIGHT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_RIGHT* 1)
(intern "*BUMPER_CENTER*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_CENTER* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_CENTER* 2)
(intern "*BUMPER_LEFT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_LEFT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_LEFT* 4)
(intern "*CLIFF_RIGHT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_RIGHT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_RIGHT* 1)
(intern "*CLIFF_CENTER*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_CENTER* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_CENTER* 2)
(intern "*CLIFF_LEFT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_LEFT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_LEFT* 4)
(intern "*BUTTON0*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON0* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON0* 1)
(intern "*BUTTON1*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON1* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON1* 2)
(intern "*BUTTON2*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON2* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON2* 4)
(intern "*ERROR_LEFT_MOTOR*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*ERROR_LEFT_MOTOR* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*ERROR_LEFT_MOTOR* 1)
(intern "*ERROR_RIGHT_MOTOR*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*ERROR_RIGHT_MOTOR* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*ERROR_RIGHT_MOTOR* 2)
(intern "*TORQUE_ON*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*TORQUE_ON* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*TORQUE_ON* 1)
(intern "*TORQUE_OFF*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*TORQUE_OFF* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*TORQUE_OFF* 2)
(defclass turtlebot3_msgs::SensorState
  :super ros::object
  :slots (_header _bumper _cliff _button _torque _left_encoder _right_encoder _battery ))

(defmethod turtlebot3_msgs::SensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper __bumper) 0)
    ((:cliff __cliff) 0)
    ((:button __button) 0)
    ((:torque __torque) nil)
    ((:left_encoder __left_encoder) 0)
    ((:right_encoder __right_encoder) 0)
    ((:battery __battery) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper (round __bumper))
   (setq _cliff (round __cliff))
   (setq _button (round __button))
   (setq _torque __torque)
   (setq _left_encoder (round __left_encoder))
   (setq _right_encoder (round __right_encoder))
   (setq _battery (float __battery))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:cliff
   (&optional __cliff)
   (if __cliff (setq _cliff __cliff)) _cliff)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _bumper
    1
    ;; uint8 _cliff
    1
    ;; uint8 _button
    1
    ;; bool _torque
    1
    ;; int32 _left_encoder
    4
    ;; int32 _right_encoder
    4
    ;; float32 _battery
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _bumper
       (write-byte _bumper s)
     ;; uint8 _cliff
       (write-byte _cliff s)
     ;; uint8 _button
       (write-byte _button s)
     ;; bool _torque
       (if _torque (write-byte -1 s) (write-byte 0 s))
     ;; int32 _left_encoder
       (write-long _left_encoder s)
     ;; int32 _right_encoder
       (write-long _right_encoder s)
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cliff
     (setq _cliff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _torque
     (setq _torque (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot3_msgs::SensorState :md5sum-) "d537ed7b8d95065b6c83830430b93911")
(setf (get turtlebot3_msgs::SensorState :datatype-) "turtlebot3_msgs/SensorState")
(setf (get turtlebot3_msgs::SensorState :definition-)
      "########################################
# CONSTANTS
########################################
# Bumper states (states are combined, when multiple bumpers are pressed)
uint8 BUMPER_RIGHT  = 1
uint8 BUMPER_CENTER = 2
uint8 BUMPER_LEFT   = 4

# Cliff sensor states (states are combined, when multiple cliff sensors are triggered)
uint8 CLIFF_RIGHT  = 1
uint8 CLIFF_CENTER = 2
uint8 CLIFF_LEFT   = 4

# Button states (only one button can be triggered at a time)
uint8 BUTTON0 = 1
uint8 BUTTON1 = 2
uint8 BUTTON2 = 4

# Motor errors
uint8 ERROR_LEFT_MOTOR  = 1
uint8 ERROR_RIGHT_MOTOR = 2

# Motor torque
uint8 TORQUE_ON  = 1
uint8 TORQUE_OFF = 2

########################################
# Messages
########################################
Header header
uint8  bumper
uint8  cliff
uint8  button
bool   torque
int32  left_encoder    # (-2,147,483,648 ~ 2,147,483,647)
int32  right_encoder   # (-2,147,483,648 ~ 2,147,483,647)
float32  battery

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :turtlebot3_msgs/SensorState "d537ed7b8d95065b6c83830430b93911")


