# Fixed Audio/Video in Android 12 for Orange PI 5 Plus
The goal of this version is to fix the HDMI audio issue present in Android 12 on the Orange PI 5 Plus, which affected various functionalities such as video playback and emulators like Aethersx2. Additionally, I will also be adding some extra features.
## About this README:
- **My English is not very good, so please forgive me for any mistakes.**
## Main Fix:
- Bad performance in Aethersx2.
- Audio and Video with bottleneck.
## Extra things:
- Disable blinking LEDs.
- Removed unused apps.
- Added resolution for Old TVs (1360x768).
- Dark mode by default and new wallpaper.
- Disabled default "5555" ADB port (Security reasons).
- Some apps were added in performance mode (Better stability, or at least it should be).
 ## FAQ:
 #### How to install?
 - It's basically the same thing as the original version.
 - follow these tutorials if you don't know: [SDCARD](https://www.youtube.com/watch?v=gxkNApGxfo4), [NVME](https://www.youtube.com/watch?v=Bet_plMIS30)
 #### How to root?
 - Install Magisk [Here](https://github.com/topjohnwu/Magisk/releases).
 - Go to the first option of "Install".
 - Select "Direct Install" and click "Let's Go".
 - Reboot and done.

 #### How to install Google Apps?
- Root using Magisk.
- Install this module in Magisk [Here](https://sourceforge.net/projects/magiskgapps/files/android-12L-ALPHA/17.10.2022/MagiskGApps-a.12L.BASIC.10.16.2022.zip).
- Reboot and done.

#### How to disable/hide Navbar and StatusBar?
- **Navbar:** I would recommend [this module](https://github.com/Magisk-Modules-Alt-Repo/HideNavBar) for magisk, but there is a small problem if you use custom launcher, every time you turn on the OPI5 the taskbar will appear again, you will need to drag it up to make the bar disappear (the default launcher doesn't have this problem).
- **StatusBar:** I would recommend [this module](https://drive.google.com/file/d/1BW89IM22JGLFDJ7N6MuALMOTq0Bu-flj/view), but it hides the bar completely, but there is this small [modification](https://drive.google.com/file/d/1_0o_UjOc4C48uLY5qQZtfo4rmVKnVO8g/view) that still leaves the bar accessible, [credits](https://xdaforums.com/t/is-there-any-way-to-hide-the-status-bar-to-use-the-full-screen.4499531/post-87508299).

#### Where is the source code?
- You will find it on the website on the Orange PI 5 Plus page on the official website, Here you will only find the modifications I made.

#### Are you going to do this Fix for Orange PI 5 base?
- Probably not, I don't have the OPI5 to test, and there is also an older version that doesn't have this problem.
