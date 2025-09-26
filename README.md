# Lenovo Vantage Features for Ubuntu and Debian
A Collection of Lenovo Vantage Features for your Lenovo Laptop with Debian or Ubuntu.

# Introduction
In Windows you have the Lenovo Vantage control software. In this software you can set many features. So that you don't always have to go to the BIOS to change that while you're using Debian or Ubuntu, I created this set of scripts.

# How to set up:
- Create a file f.e. "battery-conservation.sh" and copy the contents of the battery-conservation.sh files in this Repository.
- Right click on the file & set the permission to run it as programm (Or: Open Terminal in the folder where your file is located & paste the following: "chmod u+x battery-conservation.sh")
- Open terminal from the folder where your file is located and type "sudo bash battery-conservation.sh".
- Choose your option & close the terminal after you're done.

# NOTE:
I have used this only on a Lenovo Legion Laptop. I found out the hard way that if you're using a Lenovo YOGA Laptop for example, you have to change the directory path to: /sys/bus/platform/devices/VPC2004\:

Check https://github.com/niizam/vantage for a better and more maintanied version of Vantage for Linux.
