#!/system/bin/sh
#Credits for parts of the logic goes to ElPaablo (github.com/elpaablo) for the if's and under-the-hood stuff!
# and to sirio for the idea of using cp instead of mv! Thank you guys! <3
ui_print ""
ui_print " GAL a.k.a. GrusAudioLovers  "
ui_print " --------------------------  "
ui_print "     Made by matt_zer01      "

ui_print " Setting up the environment..."

#variables:
mixer1=/vendor/etc/mixer_paths.xml
mixer2=/vendor/etc/mixer_paths_mtp.xml
mixer3=/vendor/etc/mixer_paths_skuw.xml

#checks if device is Grus and if you're running KOSP
device=$(getprop ro.product.system.device)
kowalskios=$(getprop ro.build.version.incremental)
if [ $device != "grus" && kowalskios != "eng_pengus" ]; then
  ui_print "Device not supported. Aborting installaton..."
  abort
fi

if [ "$API" != "30" ]; then
  ui_print "This module doesn't support API level $API. Aborting installation..."
  exit 0
else
  ui_print "Device: $device - Ok!"
  ui_print "ROM: $rom - Ok!"
  ui_print "SDK: $API - Ok!"
  ui_print " "
  ui_print "..."
fi
rom=kow
$MODPATH=$MODPATH/$rom
bakpath=/sdcard/old_mixer

ui_print "Starting installation..."
ui_print "Backing up old Mixer files..."
mkdir $bakpath
cp -af $mixer1 $mixer2 $mixer3 $bakpath
ui_print "Copying Mixer files into /vendor/etc..."
cp -af $MODPATH /vendor/etc
ui_print "Setting permissions..."
#this operation is automatically done by Magisk itself...
ui_print "..."
ui_print "Done!"
exit 0
