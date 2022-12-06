# My macbook 💻 ( Chip) Setup Guide

# 💻 Factory Reset

https://support.apple.com/guide/mac-help/erase-and-reinstall-macos-mh27903/mac

# 👥 Setting up users and groups

See in [System preferences](https://github.com/ivoarch/.my-macbook-setup#%EF%B8%8F-system-preferences) > Users and Groups

# # Add a Standard User to sudoers

```
su <ADMIN_ACCOUNT>
sudo visudo /etc/sudoers.d/sudoers

#
# Sample /etc/sudoers file.
#
# This file MUST be edited with the 'visudo' command as root.
#
# See the sudoers man page for the details on how to write a sudoers file.

##
# Override built-in defaults
##
# User specification
##

# root and users in group wheel can run anything on any machine as any user
root            ALL = (ALL) ALL
%admin          ALL = (ALL) ALL
standartuser    ALL = (ALL) ALL
```

# 🖥 Setting up computer name

## Setting up computer name, hostname

```
sudo scutil --set ComputerName "newname"
sudo scutil --set LocalHostName "newname"
sudo scutil --set HostName "newname"
```

Flush the DNS cache by typing:

```
dscacheutil -flushcache
```

---

# 📦 Install Software

##  MacPorts

Package management for macOS

1. Install [Xcode and the Xcode Command Line Tools](https://guide.macports.org/#installing.xcode)
2. Agree to Xcode license in Terminal:

```
xcodebuild -license
```

3. Download MacPorts for macOS Monterey v12 - [download](https://github.com/macports/macports-base/releases/download/v2.7.2/MacPorts-2.7.2-12-Monterey.pkg)

## Development Environment

### 🐍 Python

- [Miniforge](https://github.com/conda-forge/miniforge#download) - latest arm64 (Apple Silicon)

```
chmod +x Miniforge3-MacOSX-arm64.sh
./Miniforge3-MacOSX-arm64.sh
```

To disable auto activation of conda base environment in terminal run:

```
conda config --set auto_activate_base false
```

## Development tools

- [Android file transfer](https://www.android.com/filetransfer/) - Transfer files between your Mac and your Android device
- [Docker](https://www.docker.com) - Run containers
- [VS Code](https://code.visualstudio.com) - Code editing
- [Git](https://git-scm.com) - Version control system
- [UTM](https://mac.getutm.app) - Run Virtual Machines

## <~/> Cli Tools

```
sudo port -v install \
  coreutils \
  docker \
  tree \
  htop \
  youtube-dl \
  pstree \
  gnupg2 \
  grep \
  wget \
  ffmpeg \
  imagemagick \
  pipenv \
  exiftool
```

## 🗂 Other applications

- [Appcleaner](https://freemacsoft.net/appcleaner/) - Application which allows you to thoroughly uninstall unwanted apps.
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) - For keeping your Mac awake .
- [Maccy](https://maccy.app) - Clipboard manager .
- [Keka](https://www.keka.io/es/) - The macOS file archiver.
- [Telegram](https://telegram.org) - Chat .
- [Hiddenbar](https://github.com/dwarvesf/hidden) - Hide menu bar items to give your Mac a cleaner look.
- [Tutanota](https://tutanota.com/es/) - is an end-to-end encrypted email software and freemium hosted secure email service .
- [Firefox](https://www.mozilla.org/) - is a free and open-source web browser .
- [VLC](https://www.videolan.org/) - free and open source cross-platform multimedia player .
- [Vorta](https://vorta.borgbase.com/) - is a backup client for macOS and Linux desktops .
- [Tiddle desktop](https://github.com/TiddlyWiki/TiddlyDesktop) - special purpose web browser for working with locally stored TiddlyWikis .

## 🛡️ Security tools

- [Bitwarden](https://bitwarden.com/) - Open Source password manager .
- [Cryptomator](https://cryptomator.org) - Protect your data in the cloud .
- [Internet Access Policy Viewer](https://obdev.at/products/iapviewer/index.html) - A better view on privacy.
- [Mullvad](https://mullvad.net) - Open-source commercial VPN service based in Sweden.
- [Veracrypt](https://www.veracrypt.fr/en/Home.html) - free open source disk encryption software.
- [Micro Snitch](https://www.obdev.at/products/microsnitch/index.html) - Monitors a mac's mic and webcam .
- [ReiKey](https://objective-see.com/products/reikey.html) - Malware and other applications may install persistent keyboard "event taps" to intercept your keystrokes.
- [KnockKnock](https://objective-see.com/products/knockknock.html) - See what's persistently installed on your Mac.
- [Lulu](https://objective-see.com/products/lulu.html) - Open-source firewall.
- [TaskExplorer](https://objective-see.org/products/taskexplorer.html) - Explore all the tasks (processes) running on your Mac with TaskExplorer.
- [BlockBlock](https://objective-see.org/products/blockblock.html) - Monitors common persistence locations and alerts whenever a persistent component is added
- [RansomWhere](https://objective-see.org/products/ransomwhere.html) - By continually monitoring the file-system for the creation of encrypted files by suspicious processes, RansomWhere? aims to protect your personal files, generically stopping ransomware in its tracks.
- [What's Your Sign](https://objective-see.org/products/whatsyoursign.html) - Open-source firewall.

---

# ⚙️ System Preferences

- **🛠️ Generel**
  - Use dark menu bar and dock
  - ✅ "Ask to keep changes when closing documents".
  - ✅ "Close windows when quitting an app".
  - ❌ "Allow handoff between this Mac and your iCloud devices".
- **Dock**
  - Remove unused apps add only favorites to Dock
  - ❌ "Show recent applications in Dock".
  - ✅ "Minimize windows into their application’s icon".
  - ✅ "Show indicators for open applications".
  - Set dock size to "50".
  - `defaults write com.apple.dock tilesize -int 50; killall Dock`
- **♿ Accessibility**
  - ✅ "Three finger drag".
  - ✅ "Use scroll gesture with modifier keys to zoom".
- **🔋 Battery**
  - ✅ "Baterry Show Percentage".
- **🖥 Display**
  - ✅ "Nightshift".
  - Schedule "Sunset to Sunrise".
- **👆 Touch ID**
  - Click the "+ Add a fingerprint" to add a new fingerprint
  - ✅ for Everything
- **📦 Software Updates**
  - ✅ "Automatically check for updates".
  - Install updates
- **👥 Users and Groups**
  - Setup administrator account (don´t name Admin! use other name) .
  - Create a second standart account (regulate user for every day tasks) . Name this account Admin .
- **🔔 Notifications**
  - ❌ "Except for App Store, Mail, Tutanota, Firefox, Mullvad, Telegram, Keka, Micro Snitch, Vorta"
- **🗣️ Siri**
  - ❌
- **💻🖱️ Trackpad**
  - ✅ "Tap to Click".
  - Ingrease the cursor speed
- **🧩 Extension**
  - ❌ unecessary extensions
- **⌨️ Keyboard**
  - **Text**
  - ❌ "Add full stop with double-space".
  - ❌ "Use smart quotes and dashes".
  - use " for double quotes
  - use ' for single quotes
  - **Sources**
  - Add Bulgarian layout
- **🔍 Spotlight**
  - ✅ Spotlight only for Applications , PDF Documents, System Preferences
- **Mission Control**
  - **Hot Corners**
  - Activate ✅ Botton Screen Corner to show -> Desktop
- ** Apple ID**
  - **iCloud**
  - ✅ "Hide My Email"
- **🔗 Sharing**
  - Make sure only you want for sharing is enabled
- **🛡️ Security and Privacy settings**
  - **General**
  - Set ✅ Require Password to immediately
  - **FileVault**
  - ✅ "FileVault".
  - **Firewall**
  - ✅ "Firewall".
  - **Firewall Options**
  - ✅ "Block all incoming connections".
  - **Lockdown Mode**
  - ✅ Turn ON
  - **Privacy**
  - **Location Services**
  - ✅ Only for "Find My"
  - ❌ everything else
  - Go to Sistem Services > Details > ✅ "Find My", ✅ Show location icon on menu bar .
  - **Camera**
  - ❌
  - **Microphone**
  - ❌
  - **Full Disk Acces**
  - ✅ Vorta
  - ✅ KnockKnock
  - ❌ everything else
  - **Apple Advertising**
  - ❌ Personalised Ads
  - **Analitycs and Improvements**
  - ❌ everything

---

# ⚙️ Software Preferences

- **Finder**
  - **General**
  - ❌ to show hard disks on desktop.
  - ❌ to show connecting servers.
  - Setup to open new windows in `$HOME` user directory
  - **Tags**
  - Create custom Tags - Work 🟢, Important 🔴, Curses 🔵
  - Remove unused tags
  - **Sidebar**
  - ❌ "Cloud Storage", "Bonjour Computers"
  - **Toolbar**
  - Right click on toolbar and select "New Folder" icon
  - **Advanced**
  - ✅ all options
  - Setup search in directory actual
  - **View**
  - ✅ to show path bar
  - ✅ to show status bar
  - Show View Options (or press `Command+J`) > ✅ Show Library Folder
- **Safari**
  - **General**
  - Setup "https://www.startpage.com/" as a start page
  - ❌ "Auto Open Safe Download".
  - **AutoFill**
  - ❌ Everything
  - **Passwords**
  - ❌ ,I don't use
  - **Search**
  - Add [DuckDuckGo](https://duckduckgo.com/) as a default search engine
  - ❌ Safari Suggestions
  - ❌ show favorites
  - **Privacy**
  - ✅ Prevent cross-site tracking (This should be checked by default.)
  - ✅ Hide IP address from trackers
  - ❌ websites to check for Apple Pay & Apple Card
- **Firefox**
  - Install from https://www.mozilla.org/en-US/firefox/new/
  - Set as default browser
  - **General**
  - Browsing - ❌ "Recommend extensions as you browse" also "Recommend features as you browse"
  - **Home**
  - Home page and new windows - Select ✅ Custom Urls -> https://searx.be/ -> New Tabs -> Firefox Home (Default)
  - Recent activity - Turn ❌ everything
  - **Search**
  - Default Search Engine - Select ✅ Searx Blegium
  - Search Suggestions - Turn ❌ everything
  - **Downloads**
  - ✅ Always ask you where to save files
  - **Privacy & Security**
  - Enhanced Tracking Protection (ETP): Select ✅ "Strict"
  - Send web sites a “Do Not Track” signal that you don’t want to be tracked : Select ✅ "Always"
  - Cookies and Site Data - Select ✅ "Delete cookies and site data when Firefox is closed" (You can still stay logged into websites by allowing exceptions).
  - Logins and Passwords - Turn ❌ everything
  - History -> Custom Settings -> Select ✅ Clear history when Firefox closes
  - Address Bar -> When using the address bar, suggest -> Turn ❌ everything
  - Permissions - Setting permissions
  - Select ✅ "Block pop-up windows"
  - Select ✅ "Warn you when website try to add-on"
  - Firefox Data Collection and Use - Turn ❌ everything
  - Deceptive Content and Dangerous Software Protection - Select ✅ everything
    HTTPS-Only Mode - Select ✅ "HTTPS-Only Mode in all windows"
  - **Sync**
  - Sync with Firefox account (The Firefox sync service is end-to-end encrypted.)
  - FF Sync apps - Setting FF Monitor to monitor a my email adress for security breaches . Check for [Security tips](https://monitor.firefox.com/security-tips)
  - **🧩 Extensions**
  - [Bitwarden](https://addons.mozilla.org/es/firefox/addon/bitwarden-password-manager/)
  - [Ublock origin](https://ublockorigin.com/)
  - [LibRedirect](https://addons.mozilla.org/en-US/firefox/addon/libredirect/)
  - [StartPage](https://addons.mozilla.org/en-US/firefox/addon/startpage-private-search/)
- **Iterm2**
  - Install from https://iterm2.com/
  - **ZSH**
  - Setup zsh see in 📁 [docs](https://github.com/ivoarch/.dotfiles/blob/main/docs/Zsh.md)
  - **Dracula theme**
  - Install 📦 `git clone https://github.com/dracula/iterm.git`
  - **Activating theme**
    - 1 iTerm2 > Preferences > Profiles > Colors Tab
    - 2 Open the **Color Presets...** drop-down in the bottom right corner
    - 3 Select **Import...** from the list
    - 4 Select the **Dracula.itermcolors** file
    - 5 Select the **Dracula** from **Color Presets**...
  - **Make Iterm2 DropDown terminal (Quake mode)**
  - 1 iTerm2 > Preferences > **Profile** > New profile > Quake > Set as Default
  - 2 Preferences > **Keys** > Hotkey and check the Show/hide all windows with a system-wide hotkey checbox and choose your hotkey combination.
  - 3 Preferences > **Profiles** > Window tab and set Style to Full-Width Top of Screen and Screen to Screen with Cursor.
  - 4 Preferences > **Appearance** and check the Exclude from Dock and ⌘-Tab Switcher.
  - 5 **System Preferences** > **Users and Groups**. Then choose your user and go to Login Items tab. Add new item with [+] button and choose iTerm application from Applications folder.
  - **Fira Code**
  - Install from https://github.com/tonsky/FiraCode
- **Mullvad VPN**
  - **VPN settings**
  - ✅ Launch app start-up
  - ✅ Auto-connect
  - ✅ Local network sharing
  - ✅ "Always require VPN"
  - ✅ "Mullvad DNS to block ads, trackers, malware, gambling, adult content"
  - ✅ "Kill switch"
  - ✅ "Lockdown mode"
  - Tunel Protocol set ✅ "WireGuard"
  - Wireguard settings > ✅ "Port Automatic", ✅ "Obfuscation set to Automatic" , "UDP over TCP port Automatic", ✅ "Enable multihop"
- **Lulu Firewall**
  - **First start**
  - ✅ "Allow Apple Programs".
  - ❌ "Allow Already Installed Applications".
- **Visual studio Code**
  - **🧩 Extensions**
  - [Docker](https://marketplace.visualstudio.com/itemsitemName=ms-azuretools.vscode-docker)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Python/Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Python Preview](https://marketplace.visualstudio.com/items?itemName=dongli.python-preview)
  - [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)
  - [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)
  - [Dracula theme](https://marketplace.visualstudio.com/items?itemName=dracula-theme.dracula)
  - [Markdown preview enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
  - [Material Icon theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - View settings [here](https://github.com/ivoarch/.my-macbook-setup/blob/main/vscode/settings.json) .
- **Tutanota**
  - **Settings > Desktop**
  - ✅ "Offline storage".
- **Bitwarden**
  - **Preferences**
  - **Security**
  - ✅ "Unlock with touchID".
  - **Preferences**
  - ✅ "Clear clipboard 1 minute".
  - ✅ Minimise when copying to clipboard".
  - **App Settings**
  - ✅ "Enable browser integration".
- **Keka**
  - ✅ "Exclude Mac Resource forks".
  - **Preferences**
  - **Compression**
  - ✅ "Exclude Mac Resource forks".
  - ✅ "Use AES-256 when encrypting ZIP files".
  - **Extraction**
  - ✅ "Exclude Mac Resource forks".
  - **Finder Extension**
  - ✅ "Show Keka actions in Finder`s contexual menu".
  - ✅ "Show compress contents of folder itemsTurn".
  - ❌ other options
- **VLC**
  - **Make VLC default player**
  - 1 Go to the video or audio file you wish to open then `right-click` it. To `right-click` on a Mac, press `Control`, then the mouse or trackpad.
  - 2 Choose **"Get Info."**
  - 3 Select **"Open with."**
  - 4 Change the current player to VLC.
  - 5 Click on the **"Change All…"** option, then select **"Continue"** from the prompt that pops up.
  - **Preferences > Interface**
  - Interface style , select ✅ "Dark".
  - **Subtitles/OSD**
  - Default econcoding, select ✅ "Cyrillic (Windows-1252)".
