#! /bin/bash
# Created by me (ScardracS) and Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
echo ""
echo "This script is developed & tested by me (ScardracS) for the Motorola Moto X Play/Pure/Style."
echo "Feel free to use and/or modify it, but please give me proper credits."
echo "I don't assume any responsibility if You damage your device/s, You have been warned!"
echo ""
echo "First of all please select your PC's OS."
echo "Press 1 and enter if you have apt package manager."
echo "Press 2 and enter if you have dnf package manager."
echo "Press 3 and enter if you have yum package manager."
echo "Press 4 and enter if you have pacman package manager."
echo "Press 5 and enter if you have yaourt package manager."
echo "Press 6 and enter if you have emerge package manager."
echo "Press any other values to stop the Script and exit."
read A
case $A in
		1)	sudo apt-get install -y adb fastboot
		;;
		2)	sudo dnf install android-tools
		;;
		3)	sudo yum install android-tools
		;;
		4)	sudo pacman -Sy android-tools
		;;
		5)	sudo yaourt -Sy android-tools
		;;
		6)	sudo emerge --ask android-sdk-update-manager
		;;
		*)	echo "Script stopped!" && exit
	esac
clear
echo "REMEMBER, DON'T PRESS ANYTHING DURING THE FLASHING PROCESS!!"
echo "Are You Ready? (y/n)"
read B
case $B in
	y) 
		echo "Do you want to delete userdata? (y/n)"
		read C
		case $C in
			y)
				clear
				echo "Wipe Script"
				sudo adb reboot-bootloader
				sudo fastboot oem fb_mode_set
				sudo fastboot flash partition gpt.bin
				sudo fastboot flash bootloader bootloader.img
				sudo fastboot flash logo logo.bin
				sudo fastboot flash boot boot.img
				sudo fastboot flash recovery recovery.img
				sudo fastboot flash system system.img_sparsechunk.0
				sudo fastboot flash system system.img_sparsechunk.1
				sudo fastboot flash system system.img_sparsechunk.2
				sudo fastboot flash system system.img_sparsechunk.3
				sudo fastboot flash system system.img_sparsechunk.4
				sudo fastboot flash system system.img_sparsechunk.5
				sudo fastboot flash system system.img_sparsechunk.6
				sudo fastboot flash system system.img_sparsechunk.7
				sudo fastboot flash system system.img_sparsechunk.8
				sudo fastboot flash system system.img_sparsechunk.9
				sudo fastboot flash system system.img_sparsechunk.10
				sudo fastboot flash modem NON-HLOS.bin
				sudo fastboot erase modemst1
				sudo fastboot erase modemst2
				sudo fastboot flash fsg fsg.mbn
				sudo fastboot erase cache
				sudo fastboot erase userdata
				sudo fastboot erase customize
				sudo fastboot erase clogo
				sudo fastboot oem fb_mode_clear
				sudo fastboot reboot
				clear
				exit
			;;
			n)
				clear
				echo "No Wipe Script"
				sudo adb reboot-bootloader
				sudo fastboot oem fb_mode_set
				sudo fastboot flash partition gpt.bin
				sudo fastboot flash bootloader bootloader.img
				sudo fastboot flash logo logo.bin
				sudo fastboot flash boot boot.img
				sudo fastboot flash recovery recovery.img
				sudo fastboot flash system system.img_sparsechunk.0
				sudo fastboot flash system system.img_sparsechunk.1
				sudo fastboot flash system system.img_sparsechunk.2
				sudo fastboot flash system system.img_sparsechunk.3
				sudo fastboot flash system system.img_sparsechunk.4
				sudo fastboot flash system system.img_sparsechunk.5
				sudo fastboot flash system system.img_sparsechunk.6
				sudo fastboot flash system system.img_sparsechunk.7
				sudo fastboot flash system system.img_sparsechunk.8
				sudo fastboot flash system system.img_sparsechunk.9
				sudo fastboot flash system system.img_sparsechunk.10
				sudo fastboot flash modem NON-HLOS.bin
				sudo fastboot erase modemst1
				sudo fastboot erase modemst2
				sudo fastboot flash fsg fsg.mbn
				sudo fastboot erase cache
				sudo fastboot erase customize
				sudo fastboot erase clogo
				sudo fastboot oem fb_mode_clear
				sudo fastboot reboot
				clear
				exit
			;;
			*)
				clear
				echo "Script stopped!"
				exit
			;;
		esac
	;;
	*)
		clear
		echo "Script stopped!"
		exit
	;;
esac
exit
