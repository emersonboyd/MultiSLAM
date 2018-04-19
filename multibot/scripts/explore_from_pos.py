#! /usr/bin/env python
from __future__ import print_function

import rospy

# Brings in the SimpleActionClient
import actionlib

# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
from frontier_exploration.msg import ExploreTaskGoal, ExploreTaskAction
from geometry_msgs.msg import PointStamped, Point

def explore_all():
    # ideas, ExploreTaskActionGOAL

    explore_client = actionlib.SimpleActionClient('explore_server', ExploreTaskAction)
    explore_client.wait_for_server()
    goal = ExploreTaskGoal();
    # goal.explore_center = PointStamped()
    goal.explore_center.header.frame_id = 'map'
    goal.explore_boundary.header.frame_id = 'map'
    explore_client.send_goal_and_wait(goal)
    print("Done Exploring")
    return True

if __name__ == '__main__':
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        
        rospy.init_node('exploration_client_py')
        success = explore_all()
        print("Exploration " + ("Succeeded!" if success else "failed :((("))
    except rospy.ROSInterruptException:
        print("program interrupted before completion", file=sys.stderr)
