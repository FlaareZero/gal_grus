# G.A.L. aka Grus Audio Lovers! (worst name ever)

A complete audio-based optimizations for your AOSP Android 11-based custom rom (YMMV)(The known supported ones are: ArrowOS, AEX, wtSupOS! and KowalskiOS).
You can easily check out all the optimizations I did by looking at the files, I left all the comments with all the know-how and what that thing - row does!

- In a general way, what this magisk module does is simply improve the audio situation of the Mi9SE, since, well, by default it doesn't perform just as great as you would expect it to be. To be more precise, what this module does is:
	> Enabling Dual Speaker, 
	> Improve the mics in all different kinds of scenarios (audio recording and video recording), 
	> Enables Hi-Res audio for USB Type-C audio output...

This README will be updated in the future! I leave a changelog here as well

# Changelog:
v1.0
- Initial release

v1.1
-  Correct and fixed once and for all Dual Speaker(finally finally!), Plus removed distortion / echo from the earpiece when in idle.
-  Earpiece audio boosting (G_8_DB).

v1.2
- Raised up the earpiece audio output even more, should give a more "spatial sound" kind of feel
- Corrected a few typos here and there

v1.3
- Integrated a new installation logic that decides whether or not you're running ArrowOS / AEX (more supports will come in the next releases!)
- Reworked locally all the mixers for ArrowOS (to be fully in par with AEX)
- [1/2] Earpiece protection from high freqs

v1.4
- Fixes for the installation logic
- [2/2] Earpiece protection from high freqs
- Ramped up all the volumes, cleared low freqs from i2s and skuw for both speaker and quadmic

v1.4.1
- Quick patch update
- Backup logic fixes and refinements (thanks to @elpaablo and to Sirio for the help! <3)
- [1/3] Adding support for all the earpieces (don't ask me why Grus is so strange xD)

v1.4.2
- [2/3] Adding more earpieces support
- [3/3] Adding more earpieces support 
- KOSP Bringup and initial support (synced with ArrowOS)

# How to install:
Either pick the latest release (by clicking to the releases tab) or clone the repo somewhere on your pc, zip everything up and flash it on your grus! Easy as that :D
