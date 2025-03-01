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

#### How to disable/hide taskbar and top bar?
- **Taskbar:** I would recommend [this module](https://github.com/Magisk-Modules-Alt-Repo/HideNavBar/releases) for magisk, but there is a small problem, every time you turn on the OPI5 the taskbar will appear again, you will need to drag it up to make the bar disappear.
- **Top bar:** I would recommend [this module](https://xdaforums.com/t/is-there-any-way-to-hide-the-status-bar-to-use-the-full-screen.4499531/#post-87508299), but it hides the bar completely, but there is this small [modification](https://xdaforums.com/t/is-there-any-way-to-hide-the-status-bar-to-use-the-full-screen.4499531/#post-87975377) that still leaves the bar accessible.
- 
#### Where is the source code?
- You will find it on the website on the Orange PI 5 Plus page on the official website, Here you will only find the modifications I made.

#### Are you going to do this Fix for Orange PI 5 base?
- Probably not, I don't have the OPI5 to test, and there is also an older version that doesn't have this problem.
