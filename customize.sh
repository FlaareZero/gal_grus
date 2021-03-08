#!/system/bin/sh

ui_print " GAL a.k.a. GrusAudioLovers  "
ui_print " --------------------------  "
ui_print "     Made by matt_zer01      "

ui_print " Setting up the environment..."

#variables:
mixer1 = "/vendor/etc/mixer_paths.xml"
mixer2 = "/vendor/etc/mixer_paths_mtp.xml"
mixer3 = "/vendor/etc/mixer_paths_i2s.xml" 
mixer4 = "/vendor/etc/mixer_paths_skuw.xml"

#Adding a custom rom check
#ROM Checking
ui_print " Checking whether you're using ArrowOS or AEX... "
#checks API
if [ "$API" != 30 ]; then
 ui_print "! You're not running ArrowOS / AEX! SDK Found: $API"
 abort
else
 ui_print "- SDK $API : Ok!"
 ui_print " "
 ui_print "..."
fi
#checks if you're running AEX or ArrowOS
set -x
prop=$(getprop ro.aex.device)
if [ "$prop" != "" ]
then
  ui_print "Okay! You're running AEX! Continuing installation..."
  $MODPATH = $MODPATH/aex 
  ui_print "Backing up old Mixer files..."
  mkdir /sdcard/old_mixer && mv -f mixer1 mixer2 mixer3 /sdcard/old_mixer
  ui_print "Copying Mixer files into /vendor/etc..."
  cp -af $MODPATH /vendor/etc
  ui_print "Setting permissions..."
  ui_print "..."
  ui_print "Done!"
  exit
else 
  ui_print "Okay! You're running ArrowOS! Continuing installation..."
  $MODPATH = $MODPATH/arrow 
  ui_print "Okay! You're running ArrowOS! Continuing installation..."
  ui_print "Backing up old Mixer files..."
  mkdir /sdcard/old_mixer && mv -f mixer1 mixer2 mixer4 /sdcard/old_mixer
  ui_print "Copying Mixer files into /vendor/etc..."
  cp -af $MODPATH /vendor/etc
  ui_print "Setting permissions..."
  #this operation is automatically done by Magisk itself...
  ui_print "..."
  ui_print "Done!"
  exit
fi
exit
