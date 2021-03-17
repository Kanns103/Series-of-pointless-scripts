cd
cd desktop

PS3='Choose an option: '
file=("Tweak with no preferences" "Tweak with preferences" "App")
select fav in "${file[@]}"; do
	case $fav in
		"Tweak with no preferences")
	git clone https://github.com/Kanns103/TweakTemplate

    mv TweakTemplate/tweak/control TweakTemplate
    mv TweakTemplate/tweak/Makefile TweakTemplate
    mv TweakTemplate/tweak/Tweak.x TweakTemplate
    mv TweakTemplate/tweak/Tweak.h TweakTemplate
    mv TweakTemplate/tweak/Tweak.plist TweakTemplate

    rm -r TweakTemplate/tweak

    mv TweakTemplate Tweak
    echo

    echo -e "\e[1;31mTweak name: \e[0m"
    read varname
    mv Tweak $varname

    sed -i '' 's/Tweak/'"$varname"'/' $varname/Makefile

    sed -i '' 's/Tweak/'"$varname"'/' $varname/control
    echo


    echo -e "\e[1;31mBundle id: \e[0m"
    read bundleid

    sed -i '' 's/com.kanns.tweak/'"$bundleid"'/' $varname/control
    echo


    echo -e "\e[1;31mFilter: \e[0m"
    read filter

    sed -i '' 's/com.apple.springboard/'"$filter"'/' $varname/$varname.plist

    mv $varname/Tweak.plist $varname.plist

    mv $varname.plist $varname
    ;;



	"Tweak with preferences")

git clone https://github.com/Kanns103/TweakTemplatePrefs

mv TweakTemplatePrefs/Tweak/control TweakTemplatePrefs
    mv TweakTemplatePrefs/Tweak/Makefile TweakTemplatePrefs
    mv TweakTemplatePrefs/Tweak/Tweak.x TweakTemplatePrefs
    mv TweakTemplatePrefs/Tweak/Tweak.h TweakTemplatePrefs
    mv TweakTemplatePrefs/Tweak/Tweak.plist TweakTemplatePrefs

    rm -r TweakTemplatePrefs/Tweak

    mv TweakTemplatePrefs Tweak

    git clone https://github.com/Kanns103/TweakPrefs

    mv TweakPrefs/Tweak Tweak
    echo

    echo -e "\e[1;31mTweak name: \e[0m"
    read varname
    mv Tweak/Tweak $varname
    mv $varname Tweak
    mv Tweak $varname
    
    sed -i '' 's/Tweak/'"$varname"'/' $varname/Makefile

    sed -i '' 's/Tweak/'"$varname"'/' $varname/control
    echo


    echo -e "\e[1;31mBundle id: \e[0m"
    read bundleid

    sed -i '' 's/com.kanns.tweak/'"$bundleid"'/' $varname/control
    sed -i '' 's/com.kanns.tweak/'"$bundleid"'/' $varname/tweak.x
    echo


    echo -e "\e[1;31mFilter: \e[0m"
    read filter

    sed -i '' 's/com.apple.springboard/'"$filter"'/' $varname/$varname.plist

    mv $varname/Tweak.plist $varname.plist
    mv $varname.plist $varname
    echo

    echo -e "\e[1;31mChoose XXXRootListController: \e[0m"
    read xxx
    sed -i '' 's/XXXRootListController/'"$xxx"'/' $varname/$varname/XXXRootListController.m
    sed -i '' 's/XXXRootListController/'"$xxx"'/' $varname/$varname/XXXRootListController.h

    sed -i '' 's/Tweak/'"$varname"'/' $varname/$varname/Makefile

    sed -i '' 's/Tweak/'"$varname"'/' $varname/$varname/entry.plist

    sed -i '' 's/XXXRootListController/'"xxx"'/' $varname/$varname/entry.plist

    sed -i '' 's/com.kanns.tweak/'"$bundleid"'/' $varname/$varname/Resources/Root.plist

    sed -i '' 's/Tweak/'"$varname"'/' $varname/$varname/Resources/Root.plist

    sed -i '' 's/Tweak/'"$varname"'/' $varname/$varname/Resources/Info.plist

    sed -i '' 's/com.kanns.tweak/'"$bundleid"'/' $varname/$varname/Resources/Info.plist

    sed -i '' 's/XXXRootListController/'"$xxx"'/' $varname/$varname/Resources/Info.plist
    echo

    echo -e "\e[1;31mDeveloper name: \e[0m"
    read name
    echo

    sed -i '' 's/Kanns/'"$name"'/' $varname/$varname/Resources/Root.plist
    ;;

    "App")
git clone https://github.com/Kanns103/App

mkdir Resources
mv Resources App
mv App/Info.plist App/Resources

echo -e "\e[1;31mApp name: \e[0m"
read appname
echo

mv App $appname

sed -i '' 's/App/'"$appname"'/' $appname/Makefile
sed -i '' 's/App/'"$appname"'/' $appname/control

echo -e "\e[1;31mDeveloper name: \e[0m"
read name
echo

sed -i '' 's/kanns/'"$name"'/' $appname/control

echo -e "\e[1;31mIdentifier: \e[0m"
read iden

sed -i '' 's/com.kanns.app/'"$iden"'/' $appname/control

sed -i '' 's/App/'"$appname"'/' $appname/Resources/Info.plist

sed -i '' 's/com.kanns.app/'"$iden"'/' $appname/Resources/Info.plist



break
	;;
"Quit")
echo "User requested exit"
exit
;;
*) echo "invalid option $REPLY";;
esac
done
echo

