## Waydroid Companion
This is a small, GUI-enabled script for starting and stopping Waydroid sessions. Its only dependency is [yad](https://manpages.org/yad), which is available on numerous distros.

Its intended usecase is stopping Waydroid on mobile devices running Phosh to preserve battery, but might be useful on desktop devices as well.

### Installation
See the [releases](https://github.com/thomashastings/waydroid-companion/releases) for a downloadable `*.deb` package.
It can be installed by running `sudo apt install ./waydroid-companion.deb`

You can also use the repository to build it locally:
```
git clone https://github.com/thomashastings/waydroid-companion.git
cd waydroid-companion
dpkg-deb --build waydroid-companion/
sudo apt install ./waydroid-companion.deb
```

![Screenshot](https://github.com/thomashastings/waydroid-companion/raw/main/screenshot.png)

### Feautres
- Install Waydroid
- Uninstall Waydroid (watch out, this will wipe your installation!)
- Start Waydroid container and session
- Stop Waydroid container and session
- Hide/show applications related to Waydroid

Notes:
- Once switched the visible/hidden state of an application, the `Hide applications` window has to be opened again to represent the changes happened.
- If you choose to uninstall Waydroid, Waydroid and all of its data will be **removed**.

### Credit
The original idea comes from [Aaron Hafer](https://open-store.io/app/waydroidhelper.aaronhafer).

The icon is the original icon of [Waydroid](https://waydro.id/). Only changed the hue to have a consistent look, but this work is not related to the original Waydroid initiative.

The actions running in the applications are from the [Waydroid docs](https://docs.waydro.id/usage/install-on-desktops).

### License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3, as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranties of MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see http://www.gnu.org/licenses/.
