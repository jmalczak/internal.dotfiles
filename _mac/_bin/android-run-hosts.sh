~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb root
~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb remount 
~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb pull /system/etc/hosts . 
echo "10.211.55.4     es.lan" >> hosts
~/Library/Developer/Xamarin/android-sdk-macosx/platform-tools/adb push hosts /system/etc/hosts 
rm -f hosts
