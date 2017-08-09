#!/usr/bin/env python

import sys
import rospy
import copy, math
import moveit_commander

from moveit_commander import RobotCommander, MoveGroupCommander
from moveit_commander import roscpp_initialize, roscpp_shutdown
from geometry_msgs.msg import PoseStamped, Pose
from shape_msgs.msg import SolidPrimitive
from moveit_msgs.msg import Grasp, GripperTranslation, PlaceLocation, MoveItErrorCodes, PlanningScene
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import random
import moveit_msgs.msg
import actionlib
import tf2_ros
import tf2_geometry_msgs
from object_recognition_msgs.msg import ObjectRecognitionAction, ObjectRecognitionGoal
from moveit_python import PlanningSceneInterface
from copy import deepcopy
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
from grasping_msgs.msg import *




GROUP_NAME_ARM = 'right_arm'
GROUP_NAME_GRIPPER = 'right_hand'

GRIPPER_FRAME = 'r_gripper_link'



GRIPPER_OPEN = [0.0]
GRIPPER_CLOSED = [0.0]
GRIPPER_NEUTRAL = [0.0]

GRIPPER_JOINT_NAMES = ['r_index_joint']

GRIPPER_EFFORT = [1.0]

#GRIPPER_OPEN = [0.0 , 0.0 , 0.0 , 0.0 , 0.0]
#GRIPPER_CLOSED = [0.0 , 0.0 , 0.0 , 0.0 , 0.0]
#GRIPPER_NEUTRAL = [0.0 , 0.0 , 0.0 , 0.0 , 0.0]

#GRIPPER_JOINT_NAMES = ['r_thumb_joint', 'r_index_joint', 'r_middle_joint', 'r_ring_joint', 'r_pinky_joint']

#GRIPPER_EFFORT = [1.0, 1.0, 1.0, 1.0, 1.0]

REFERENCE_FRAME = 'base_link'
jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

def sendJointCommand(name,val):

    jointcommand = JointState()
    jointcommand.header = Header()
    jointcommand.header.stamp = rospy.Time.now()
    jointcommand.name.append(name)
    jointcommand.position.append(val)
    jointcommand.velocity = []
    jointcommand.effort= []
    jointPublisher.publish(jointcommand)
    #print(jointcommand)

def openRightHand():
  sendJointCommand('r_thumb_joint',rospy.get_param("/inmoov/joints/r_thumb_joint/minGoal"))
  sendJointCommand('r_index_joint',rospy.get_param("/inmoov/joints/r_index_joint/minGoal"))
  sendJointCommand('r_middle_joint',rospy.get_param("/inmoov/joints/r_middle_joint/minGoal"))
  sendJointCommand('r_ring_joint',rospy.get_param("/inmoov/joints/r_ring_joint/minGoal"))
  sendJointCommand('r_pinky_joint',rospy.get_param("/inmoov/joints/r_pinky_joint/minGoal"))


def closeRightHand():
  #sendJointCommand('r_thumb_joint',rospy.get_param("/inmoov/joints/r_thumb_joint/maxGoal"))
  sendJointCommand('r_index_joint',rospy.get_param("/inmoov/joints/r_index_joint/maxGoal"))
  sendJointCommand('r_middle_joint',rospy.get_param("/inmoov/joints/r_middle_joint/maxGoal"))
  sendJointCommand('r_ring_joint',rospy.get_param("/inmoov/joints/r_ring_joint/maxGoal"))
  sendJointCommand('r_pinky_joint',rospy.get_param("/inmoov/joints/r_pinky_joint/maxGoal"))

# Get the gripper posture as a JointTrajectory
def make_gripper_posture(joint_positions):
    # Initialize the joint trajectory for the gripper joints
    t = JointTrajectory()
    
    # Set the joint names to the gripper joint names
    t.joint_names = GRIPPER_JOINT_NAMES
    
    # Initialize a joint trajectory point to represent the goal
    tp = JointTrajectoryPoint()
    
    # Assign the trajectory joint positions to the input positions
    tp.positions = joint_positions
    
    # Set the gripper effort
    tp.effort = GRIPPER_EFFORT
    
    tp.time_from_start = rospy.Duration(1.0)
    
    # Append the goal point to the trajectory points
    t.points.append(tp)
    
    # Return the joint trajectory
    return t

# Generate a gripper translation in the direction given by vector
def make_gripper_translation(min_dist, desired, vector):
    # Initialize the gripper translation object
    g = GripperTranslation()
    
    # Set the direction vector components to the input
    g.direction.vector.x = vector[0]
    g.direction.vector.y = vector[1]
    g.direction.vector.z = vector[2]
    
    # The vector is relative to the gripper frame
    g.direction.header.frame_id = GRIPPER_FRAME
    
    # Assign the min and desired distances from the input
    g.min_distance = min_dist
    g.desired_distance = desired
    
    return g

# Generate a list of possible grasps
def make_grasps(initial_pose_stamped, allowed_touch_objects):
    # Initialize the grasp object
    g = Grasp()
    
    # Set the pre-grasp and grasp postures appropriately
    #g.pre_grasp_posture = make_gripper_posture(GRIPPER_OPEN)
    #g.grasp_posture = make_gripper_posture(GRIPPER_CLOSED)
            
    # Set the approach and retreat parameters as desired
    #g.pre_grasp_approach = make_gripper_translation(0.05, 0.15, [1.0, 0.0, 0.0])
    #g.post_grasp_retreat = make_gripper_translation(0.05, 0.15, [-1.0, 0.0, 0.0])
    
    # Set the first grasp pose to the input pose
    g.grasp_pose = initial_pose_stamped

    # Pitch angles to try
    #pitch_vals = [0, 0.1, -0.1, 0.2, -0.2, 0.3, -0.3]
    pitch_vals = [0]
    
    # Yaw angles to try
    #yaw_vals = [0,.43,-.43,.86,-.86, 1.29,-1.29, 1.72, -1.72]

    yaw_vals = [1.57]

    # A list to hold the grasps
    grasps = []

    # Generate a grasp for each pitch and yaw angle
    for y in yaw_vals:
        for p in pitch_vals:
            # Create a quaternion from the Euler angles
            q = quaternion_from_euler(0, p, y)
            
            # Set the grasp pose orientation accordingly
            g.grasp_pose.pose.orientation.x = q[0]
            g.grasp_pose.pose.orientation.y = q[1]
            g.grasp_pose.pose.orientation.z = q[2]
            g.grasp_pose.pose.orientation.w = q[3]
            
            # Set and id for this grasp (simply needs to be unique)
            g.id = str(len(grasps))
            
            # Set the allowed touch objects to the input list
            g.allowed_touch_objects = allowed_touch_objects
            
            # Don't restrict contact force
            g.max_contact_force = 0
            
            # Degrade grasp quality for increasing pitch angles
            g.grasp_quality = 1.0 - abs(p)
            
            # Append the grasp to the list
            grasps.append(deepcopy(g))
            
    # Return the list
    return grasps





def detectObject():
  client = actionlib.SimpleActionClient('recognize_objects', ObjectRecognitionAction)
  client.wait_for_server()

  start = rospy.Time.now()  # for checking the round trip time.

  goal = ObjectRecognitionGoal()


  client.send_goal(goal)
  client.wait_for_result()  # wait indefinitely for a result
  return client.get_result()

class MoveItDemo:
    def __init__(self):
      # Initialize the move_group API
      moveit_commander.roscpp_initialize(sys.argv)
      
      rospy.init_node('moveit_demo')
              
      # Use the planning scene object to add or remove objects
      scene = PlanningSceneInterface("base_link")
      
      # Create a scene publisher to push changes to the scene
      self.scene_pub = rospy.Publisher('planning_scene', PlanningScene)
      
      # Create a publisher for displaying gripper poses
      self.gripper_pose_pub = rospy.Publisher('gripper_pose', PoseStamped)
      
      # Create a dictionary to hold object colors
      self.colors = dict()
      
                      
      # Initialize the move group for the right arm
      right_arm = MoveGroupCommander(GROUP_NAME_ARM)
      
      # Initialize the move group for the right gripper
      #right_gripper = MoveGroupCommander(GROUP_NAME_GRIPPER)
      
      # Get the name of the end-effector link
      end_effector_link = right_arm.get_end_effector_link()

      # Allow some leeway in position (meters) and orientation (radians)
      right_arm.set_goal_position_tolerance(0.02)
      right_arm.set_goal_orientation_tolerance(.3)

      # Allow replanning to increase the odds of a solution
      right_arm.allow_replanning(True)
      
      # Set the right arm reference frame
      right_arm.set_pose_reference_frame(REFERENCE_FRAME)
      
      # Allow 5 seconds per planning attempt
      right_arm.set_planning_time(15)
      
      # Set a limit on the number of pick attempts before bailing
      max_pick_attempts = 1
      
      # Set a limit on the number of place attempts
      max_place_attempts = 3

      #open the gripper
      openRightHand()
              
     # Start the arm in the "resting" pose stored in the SRDF file
      #right_arm.set_named_target('resting')
      #right_arm.go()

      # Open the gripper to the neutral position
      #right_gripper.set_joint_value_target(GRIPPER_NEUTRAL)
      #right_gripper.go()


      # Connect to the UBR-1 find_objects action server
      rospy.loginfo("Connecting to basic_grasping_perception/find_objects...")
      find_objects = actionlib.SimpleActionClient("basic_grasping_perception/find_objects", FindGraspableObjectsAction)
      find_objects.wait_for_server()
      rospy.loginfo("...connected")
      rospy.sleep(1)

      
      # Initialize the grasping goal
      goal = FindGraspableObjectsGoal()
      
      # We don't use the UBR-1 grasp planner as it does not work with our gripper
      goal.plan_grasps = False
      
      # Send the goal request to the find_objects action server which will trigger
      # the perception pipeline
      find_objects.send_goal(goal)
      
      # Wait for a result
      find_objects.wait_for_result(rospy.Duration(5.0))
      
      # The result will contain support surface(s) and objects(s) if any are detected
      find_result = find_objects.get_result()

      # Display the number of objects found
      rospy.loginfo("Found %d objects" % len(find_result.objects))

      # Remove all previous objects from the planning scene
      for name in scene.getKnownCollisionObjects():
          scene.removeCollisionObject(name, False)
      for name in scene.getKnownAttachedObjects():
          scene.removeAttachedObject(name, False)
      scene.waitForSync()
      
      # Clear the virtual object colors
      scene._colors = dict()

      # Use the nearest object on the table as the target
      target_pose = PoseStamped()
      target_pose.header.frame_id = REFERENCE_FRAME
      target_size = None
      the_object = None
      the_object_dist = 1.0
      count = -1
      
      # Cycle through all detected objects and keep the nearest one
      for obj in find_result.objects:
          count += 1
          scene.addSolidPrimitive("object%d"%count,
                                  obj.object.primitives[0],
                                  obj.object.primitive_poses[0],
                                  wait = False)

          # Choose the object nearest to the robot
          dx = obj.object.primitive_poses[0].position.x 
          dy = obj.object.primitive_poses[0].position.y
          d = math.sqrt((dx * dx) + (dy * dy))
          if d < the_object_dist:
              the_object_dist = d
              the_object = count
              
              # Get the size of the target
              target_size = obj.object.primitives[0].dimensions
              
              # Set the target pose
              target_pose.pose = obj.object.primitive_poses[0]
              
              q = quaternion_from_euler(0, 0, 1.57)
              target_pose.pose.orientation.x = q[0]
              target_pose.pose.orientation.y = q[1]
              target_pose.pose.orientation.z = q[2]
              target_pose.pose.orientation.w = q[3]
              # We want the gripper to be horizontal
              #target_pose.pose.orientation.x = 0.0
              #target_pose.pose.orientation.y = 0.0
              #target_pose.pose.orientation.z = 0.0
              #target_pose.pose.orientation.w = 1.0
          
          # Make sure we found at least one object before setting the target ID
          if the_object != None:
              target_id = "object%d"%the_object
              
      # Insert the support surface into the planning scene
      for obj in find_result.support_surfaces:
          # Extend surface to floor
          height = obj.primitive_poses[0].position.z
          obj.primitives[0].dimensions = [obj.primitives[0].dimensions[0],
                                          2.0, # make table wider
                                          obj.primitives[0].dimensions[2] + height]
          obj.primitive_poses[0].position.z += -height/2.0

          # Add to scene
          scene.addSolidPrimitive(obj.name,
                                  obj.primitives[0],
                                  obj.primitive_poses[0],
                                  wait = False)
          
          # Get the table dimensions
          table_size = obj.primitives[0].dimensions

      # Wait for the scene to sync
      scene.waitForSync()

      # Set colors of the table and the object we are grabbing
      scene.setColor(target_id, 223.0/256.0, 90.0/256.0, 12.0/256.0)  # orange
      scene.setColor(find_result.objects[the_object].object.support_surface, 0.3, 0.3, 0.3, 0.7)  # grey
      scene.sendColors()

      # Get the support surface ID
      support_surface = find_result.objects[the_object].object.support_surface
                        
      # Set the support surface name to the table object
      right_arm.set_support_surface_name(support_surface)
      #scene.addBox("coke",.07,.1,.2,pose_x,pose_y,pose_z)
      #scene.addMesh(name="coke",pose=pose_transformed,filename="/home/robot/inmoov_ros/src/ork_tutorials/data/coke.stl")
      #scene.addCylinder("coke",.12,.031,pose_x,pose_y,pose_z)
      # Wait for the scene to sync - not working?!?
      #scene.waitForSync()

      #Insert table?!?

      

      # Initialize the grasp pose to the target pose
      grasp_pose = target_pose

      # Shift the grasp pose half the size of the target to center it in the gripper
      try:
          target_x = .1
          target_z = .1
          grasp_pose.pose.position.x += target_x / 2.0
          grasp_pose.pose.position.y -= 0.01
          grasp_pose.pose.position.z += target_z / 2.0
      except:
          rospy.loginfo("Invalid object size so skipping")

      # Generate a list of grasps
      #grasps = make_grasps(target_pose, "coke")
     
       # Publish the grasp poses so they can be viewed in RViz
      #for grasp in grasps:
      #  self.gripper_pose_pub.publish(grasp.grasp_pose)
        #print("hi")
      #  print(grasp.grasp_pose)
      #  rospy.sleep(2)

      self.gripper_pose_pub.publish(grasp_pose)
      # Track success/failure and number of attempts for pick operation
      result = None
      n_attempts = 0
      
      # Set the start state to the current state
      right_arm.set_start_state_to_current_state()
      print("moving to grab location")
      ####TEST
      right_arm.set_pose_target(grasp_pose, right_arm.get_end_effector_link())
      right_arm.go()
      ####TEST


      rospy.sleep(5)
      print("closing right hand")

      #closeRightHand()


      # Repeat until we succeed or run out of attempts
      #while result != MoveItErrorCodes.SUCCESS and n_attempts < max_pick_attempts:
      #    result = right_arm.pick("coke", grasps)
      #    n_attempts += 1
      #    rospy.loginfo("Pick attempt: " +  str(n_attempts))
      #    rospy.sleep(1.0)

if __name__ == "__main__":
  MoveItDemo()

