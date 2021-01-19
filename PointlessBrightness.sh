#!/bin/sh

echo "Installing brightnesss so we can dim the screen from terminal"
brew install brightness
echo
echo "Done installing"
echo

PS3='Choose an option: '
foods=("Max brightness" "Lowest brightness without screen off" "Lowest brightness turn off screen" "Middle brightness" "Second highest without eyes hurting" "Exit the script")
select fav in "${foods[@]}"; do
    case $fav in
        "Max brightness")
        brightness 1
        ;;

        "Lowest brightness without screen off")
        brightness 0.1
        ;;

        "Lowest brightness turn off screen")
        brightness 0
        ;;

        "Middle brightness")
        brightness 0.5
        ;;

        "Second highest without eyes hurting")
        brightness 0.8
        ;;

        "Exit the script")
        logout
	    
	    
	    break
            ;;
	"Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done