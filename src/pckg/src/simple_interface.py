#!/usr/bin/env python

import rospy
import tkinter as tk
from std_msgs.msg import Float64

class ROSInterface:
    def __init__(self, root):
        self.root = root
        self.root.title("ROS Interface")

        self.pan_label = tk.Label(root, text="Pan Value:")
        self.pan_label.pack()

        self.pan_slider = tk.Scale(root, from_=-3.139, to=3.139, resolution=0.01, orient=tk.HORIZONTAL, command=self.send_pan)
        self.pan_slider.pack()

        self.tilt_label = tk.Label(root, text="Tilt Value:")
        self.tilt_label.pack()

        self.tilt_slider = tk.Scale(root, from_=-3.139, to=3.139, resolution=0.01, orient=tk.HORIZONTAL, command=self.send_tilt)
        self.tilt_slider.pack()

        self.pan_pub = rospy.Publisher('/wxxms/pan_controller/command', Float64, queue_size=10)
        self.tilt_pub = rospy.Publisher('/wxxms/tilt_controller/command', Float64, queue_size=10)

    def send_pan(self, value):
        pan_value = float(value)
        self.pan_pub.publish(pan_value)
        rospy.loginfo("Sent Pan Value: {:.2f}".format(pan_value))

    def send_tilt(self, value):
        tilt_value = float(value)
        self.tilt_pub.publish(tilt_value)
        rospy.loginfo("Sent Tilt Value: {:.2f}".format(tilt_value))

def main():
    rospy.init_node('simple_interface', anonymous=True)
    root = tk.Tk()
    interface = ROSInterface(root)
    root.mainloop()

if __name__ == '__main__':
    main()
