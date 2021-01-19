#!/bin/bash

iproxy 2022 44

ssh root@localhost -p 2022

PS3='Choose an option: '
foods=("Clean device" "Exit the script" "Fix black screen when changing device resoloution" "Fix issues without rebooting and loosing jailbreak" "Fix issues if before option doesn't work or gets stuck on reboot")
select fav in "${foods[@]}"; do
    case $fav in
        "Clean device")
echo "Running uicache..."
	    uicache -a
echo "Running sbreload"
sbreload
echo
echo "Done"
echo

            ;;
        "Exit the script")
echo "Exiting the script..."
sleep 0.5
logout
            ;;
        "Fix black screen issue after changing device resoloution")
echo "Running iofbres"
iofbres r
echo
echo "Done"
echo
;;

"Fix issues without rebooting and loosing jailbreak")
echo "Running ldrestart"
ldrestart
echo "16"
sleep 1
echo "15"
sleep 1
echo "14"
sleep 1
echo "13"
sleep 1
echo "12"
sleep 1
echo "11"
sleep 1
echo "10"
sleep 1
echo "9"
sleep 1
echo "8"
sleep 1
echo "7"
sleep 1
echo "6"
sleep 1
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "0"
sleep 1
echo
echo "Done"
echo
;;

"Fix issues if before option doesn't work or gets stuck on reboot")
echo "Running reboot"
reboot
echo
echo "Done"
echo

	    
	    break
            ;;
	"Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done