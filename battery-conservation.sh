#!/bin/bash

#written by MillennialChap 2021 - https://millennialchap.com
#Script under the GNU AGPLv3 license.

#see the status of battery conservation settings
echo "0 means battery conservation mode is OFF."
echo "1 means battery conservation mode is ON."
echo "--------------------------------------------------------------------------------"
echo "Current status:" 
cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode;
echo "--------------------------------------------------------------------------------"
#control the status of battery conservation settings
echo "Do you wish to end the script, enable or disable the battery conservation mode?"
select yn in "Exit" "Enable" "Disable"; do
    case $yn in
        Exit ) echo "Bye. Love ya!" && exit 0;;
        Enable ) echo 1  > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode && echo "Enabled - Battery only charges to max. 65%. Thank you!" && exit 0;;
        Disable ) echo 0  > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode && echo "Disabled - Battery will charge to 100%. How dare you?!" && exit 0;;
    esac
done

exit 0
