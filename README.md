# Fixed Audio/Video in Android 12 for Orange PI 5 Plus
The goal of this version is to fix the HDMI audio issue present in Android 12 on the Orange PI 5 Plus, which affected various functionalities such as video playback and emulators like Aethersx2. Additionally, I will also be adding some extra features.
## Main Fix:
- Bad performance in Aethersx2.
- Audio and Video with bottleneck.
## Extra things:
- Disable blinking LEDs.
- Dark Mode by default.
- Disabled default "5555" ADB port (Security reasons).
- Some apps were added in performance mode (Better stability, or at least it should be).
 ## FAQ:
 #### How to install?
 - It's basically the same thing as the original version.
 - follow these tutorials if you don't know: [SDCARD](https://www.youtube.com/watch?v=gxkNApGxfo4), [NVME](https://www.youtube.com/watch?v=Bet_plMIS30)
 #### How to root?
 - Install Magisk [Here](https://github.com/topjohnwu/Magisk/releases)
 - Go to the first option of "Install".
 - Select "Direct Install" and click "Let's Go".
 - Reboot and done.

 #### How to install Google Apps?
- 1: Root using Magisk.
- 2: Install this module in Magisk [Here](https://sourceforge.net/projects/magiskgapps/files/android-12L-ALPHA/17.10.2022/MagiskGApps-a.12L.BASIC.10.16.2022.zip)
- 3: Reboot and done.

#### How to disable taskbar?
- For now, I still don't have an good answer, but in the meantime, I would recommend only activating 'Gesture Mode' in the settings.

#### Where is the source code?
- The source code is more than 80GB, for this reason I will not post it, but you can find the original Android 12 code for the Orange PI 5 directly from the official website, But as soon as possible I will publish all the changes that have been made, so anyone can download the source code from the official website and apply it.

#### Are you going to do this Fix for Orange PI 5 base?
- Probably not, I don't have the OPI5 to test, and there is also an older version that doesn't have this problem.
