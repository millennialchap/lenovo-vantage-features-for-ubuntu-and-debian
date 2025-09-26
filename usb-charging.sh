#!/bin/bash

#written by MillennialChap 2022 - https://millennialchap.com
#Script under the GNU AGPLv3 license.

#see the status of USB charging settings
echo "0 means USB charging mode is OFF."
echo "1 means USB charging mode is ON."
echo "--------------------------------------------------------------------------------"
echo "Current status:" 
cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/usb_charging;
echo "--------------------------------------------------------------------------------"
#control the status of USB charging settings
echo "Do you wish to end the script, enable or disable the USB always on mode?"
select yn in "Exit" "Enable" "Disable"; do
    case $yn in
        Exit ) echo "Bye. Love ya!" && exit 0;;
        Enable ) echo 1  > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/usb_charging && echo "Enabled - USB is always on, even if the Laptop is shutdown. How dare you?!" && exit 0;;
        Disable ) echo 0  > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/usb_charging && echo "Disabled - USB is not always on, even if the Laptop is off. Thank you!" && exit 0;;
    esac
done

exit 0
