# My macbook 💻 ( Chip) Setup Guide

✅ Native Support ✳️ Rosetta 🔶 Need Info 🚫 Unsupported 🍺 HomeBrew Formulae

# 🖥 Setting up computer name

Setting up computer name, hostname

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

## Xcode (CLI tools)

```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

```
xcode-select --install
```

## HomeBrew

Package management for macOS

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For X86_64 packages

```
arch -x86_64 zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For installing the packages using Intel, you can now use:

```
arch -x86_64 brew install foo
```

## Development Environment

### Python

- ✅ [Miniforge](https://github.com/conda-forge/miniforge)

```
./Miniforge3-MacOSX-arm64.sh
```

### Java/JDK

✅ 🍺

```
brew install openjdk
```

## Development tools

- ✳️ 🍺 [Android file transfer](https://www.android.com/filetransfer/) - Transfer files between your Mac and your Android device
- ✅ 🍺 [Docker](https://www.docker.com) - Run containers
- ✅ 🍺 [VS Code](https://code.visualstudio.com) - Code editing
- [Git](https://git-scm.com) - Version control system
- ✅ 🍺 [UTM](https://mac.getutm.app) - Run Virtual Machines

```
brew install --cask \
  android-file-transfer \
  visual-studio-code \
  docker \
  utm
```

## <~/> Cli Tools

```
brew install \
  coreutils \
  tree \
  htop \
  pinfo \
  youtube-dl \
  neofetch \
  pstree \
  gnupg \
  nano \
  wget \
  ffmpeg \
  imagemagick
```

## 🗂 Other applications

- ✅ 🍺 [Appcleaner](https://freemacsoft.net/appcleaner/) - Application which allows you to thoroughly uninstall unwanted apps.
- ✅ 🍺 [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) - For keeping your Mac awake .
- ✅ 🍺 [Rectangle](https://rectangleapp.com) - Move and resize windows in macOS using keyboard shortcuts .
- ✅ 🍺 [Maccy](https://maccy.app) - Clipboard manager .
- ✅ 🍺 [Keka](https://www.keka.io/es/) - The macOS file archiver.
- ✳️ 🍺 [DeepL](https://www.deepl.com/translator) - Translator .
- ✅ 🍺 [Telegram](https://telegram.org) - Chat .
- ✅ 🍺 [Hiddenbar](https://github.com/dwarvesf/hidden) - Hide menu bar items to give your Mac a cleaner look.
- ✳️ 🍺 [Tutanota](https://tutanota.com/es/) - is an end-to-end encrypted email software and freemium hosted secure email service .
- ✅ 🍺 [Thunderbird](https://www.thunderbird.net/en-GB/) - is a free email application that’s easy to set up and customise .
- ✅ 🍺 [Firefox](https://www.mozilla.org/) - is a free and open-source web browser .
- ✅ 🍺 [VLC](https://www.videolan.org/) - free and open source cross-platform multimedia player .
- ✅ 🍺 [Vorta](https://vorta.borgbase.com/) - is a backup client for macOS and Linux desktops .

```
brew install --cask \
  appcleaner \
  rectangle \
  maccy \
  keka \
  telegram \
  deepl \
  hiddenbar \
  tutanota \
  vlc \
```

To install Vorta check in 📁 [docs](https://github.com/ivoarch/.dotfiles/blob/main/docs/Vorta.md)

## 🛡️ Security tools

- ✅ 🍺 [Bitwarden](https://bitwarden.com/) - Open Source password manager .
- ✅ 🍺 [Cryptomator](https://cryptomator.org) - Protect your data in the cloud .
- [Internet Access Policy Viewer](https://obdev.at/products/iapviewer/index.html) - A better view on privacy.
- ✅ 🍺 [Mullvad](https://mullvad.net) - Open-source commercial VPN service based in Sweden.
- ✅ 🍺 [Secretive](https://github.com/maxgoedjen/secretive) - App for storing and managing SSH keys in the Secure Enclave .
- ✅ 🍺 [Veracrypt](https://www.veracrypt.fr/en/Home.html) - free open source disk encryption software.
- ✅ 🍺 [OverSight](https://objective-see.com/products/oversight.html) - Monitors a mac's mic and webcam .
- ✅ 🍺 [ReiKey](https://objective-see.com/products/reikey.html) - Malware and other applications may install persistent keyboard "event taps" to intercept your keystrokes.
- ✅ 🍺 [KnockKnock](https://objective-see.com/products/knockknock.html) - See what's persistently installed on your Mac.
- ✅ 🍺 [Lulu](https://objective-see.com/products/lulu.html) - Open-source firewall.

```
brew install --cask \
  bitwarden \
  oversight \
  cryptomator \
  secretive \
  mullvadvpn \
  reikey \
  knockknock \
  veracrypt \
  lulu
```

---

# ⚙️ System Preferences

- **🛠️ Generel**
  - Use dark menu bar and dock
  - Turn ✅ "Ask to keep changes when closing documents"
  - Turn ✅ "Close windows when quitting an app"
- **Dock**
  - Remove unused apps add only favorites to Dock
  - Turn ❌ "Show recent applications in Dock"
  - Turn ✅ "Minimize windows into their application’s icon"
  - Turn ✅ "Show indicators for open applications"
  - Set dock size to "50"
  - `defaults write com.apple.dock tilesize -int 50; killall Dock`
- **♿ Accessibility**
  - Turn ✅ "Three finger drag"
  - Turn ✅ "Use scroll gesture with modifier keys to zoom"
- **🔋 Battery**
  - Turn ✅ "Baterry Show Percentage"
- **🖥 Display**
  - Turn ✅ "Nightshift"
  - Schedule "Sunset to Sunrise"
- **👆 Touch ID**
  - Click the “+ Add a fingerprint” to add a new fingerprint
  - Turn ✅ for everything
- **📦 Software Updates**
  - Turn ✅ "Automatically check for updates"
  - Install updates
- **👥 Users and Groups**
  - Setup administrator account (don´t name Admin! use other name) .
  - Create a second standart account (regulate user for every day tasks) . Name this account Admin .
- **🔔 Notifications**
  - Turn ❌, "Except for App Store, Calendar, FaceTime, Mail, Messages, Reminder, Safari, Telegram"
- **🗣️ Siri**
  - Disable
- **💻🖱️ Trackpad**
  - Turn ✅ "Tap to Click"
  - Ingrease the cursor speed
- **🧩 Extension**
  - Turn ❌ unecessary extensions
- **⌨️ Keyboard**
  - **Text**
  - Turn ❌ "Add full stop with double-space"
  - Turn ❌ "Use smart quotes and dashes"
  - use " for double quotes
  - use ' for single quotes
  - **Sources**
  - Add Bulgarian layout
- **🔍 Spotlight**
  - Turn ✅ Spotlight only for Applications , PDF Documents, System Preferences
- **Mission Control**
  - **Hot Corners**
  - Turn ❌ all
- **🕖 📅 Date & Time**
  - **Date & Time**
  - Set Cloudflare time https://www.cloudflare.com/time/
  - Turn ✅ "date and time automatically", enter `time.cloudflare.com`
- ** Apple ID**
  - **iCloud**
  - Turn ✅ "Hide My Email"
- **🔗 Sharing**
  - Make sure only you want for sharing is enabled
- **🌐 Network**
  - **Advanced** > **DNS**
  - Set the DNS servers to use [Cloudflare for Families](https://blog.cloudflare.com/introducing-1-1-1-1-for-families/)
  - Set to use `1.1.1.3`, `1.0.0.3` to block malware and adult-related content.
- **🛡️ Security and Privacy settings**
  - **General**
  - Set Require Password to immediately
  - **FileVault**
  - Turn ✅ "FileVault"
  - **Firewall**
  - Turn ✅ "Firewall"
  - Turn ❌ "Blcok all incoming connections"
  - **Privacy**
  - Set default privacy settings for apps

---

# ⚙️ Software Preferences

- **Finder**
  - **General**
  - Turn ❌ to show hard disks on desktop
  - Turn ❌ to show connecting servers
  - Setup to open new windows in `$HOME` user directory
  - **Tags**
  - Create custom Tags - Work 🟢, Important 🔴, Curses 🔵
  - Remove unused tags
  - **Sidebar**
  - Turn ❌ "iCloud Drive", "Cloud Storage", "Bonjour Computers"
  - Show all Filename Extensions
  - Remove Items from Bin after 30 Days
  - **Advanced**
  - Turn ✅ all options
  - Setup search in directory actual
  - **View**
  - Turn ✅ to show path bar
  - Turn ✅ to show status bar
  - Show View Options (or press `Command+J`) > Turn ✅ Show Library Folder
- **Safari**
  - **General**
  - Setup "https://www.startpage.com/" as a start page
  - Turn ❌ "Auto Open Safe Download"
  - **AutoFill**
  - Turn ❌ everything
  - **Passwords**
  - Turn ❌ ,I don't use
  - **Search**
  - Add [DuckDuckGo](https://duckduckgo.com/) as a default search engine
  - Turn ❌ Safari Suggestions
  - Turn ❌ show favorites
  - **Privacy**
  - Turn ✅ Prevent cross-site tracking (This should be checked by default.)
  - Turn ✅ Hide IP address from trackers
  - Turn ❌ websites to check for Apple Pay & Apple Card
  - **🧩 Extensions**
  - Adguard (enable all)
  - Bitwarden
- **Firefox**
  - Install 🍺 `brew install --cask firefox`
  - Set as default browser
  - **General**
  - Browsing - Turn ❌ "Recommend extensions as you browse" also "Recommend features as you browse"
  - **Home**
  - Home page and new windows - Select ✅ Custom Urls -> https://www.startpage.com -> New Tabs -> Firefox Home (Default)
  - Recent activity - Turn ❌ everything
  - **Search**
  - Default Search Engine - Select ✅ Startpage.com
  - Search Suggestions - Turn ❌ everything
  - **Privacy & Security**
  - Enhanced Tracking Protection (ETP): Select ✅ "Strict"
  - Send web sites a “Do Not Track” signal that you don’t want to be tracked : Select ✅ "Always"
  - Cookies and Site Data - Select ✅ "Delete cookies and site data when Firefox is closed" (You can still stay logged into websites by allowing exceptions).
  - Logins and Passwords - Turn ❌ everything
  - History -> Custom Settings -> Select ✅ Clear history when Firefox closes
  - Address Bar -> When using the address bar, suggest -> Turn ❌ everything
  - Permissions - Setting permissions
  - Firefox Data Collection and Use - Turn ❌ everything
  - Deceptive Content and Dangerous Software Protection - Select ✅ everything
    HTTPS-Only Mode - Select ✅ "HTTPS-Only Mode in all windows"
  - **Sync**
  - Sync with Firefox account (The Firefox sync service is end-to-end encrypted.)
  - FF Sync apps - Setting FF Monitor to monitor a my email adress for security breaches . Check for [Security tips](https://monitor.firefox.com/security-tips)
  - **🧩 Extensions**
  - [Bitwarden](https://addons.mozilla.org/es/firefox/addon/bitwarden-password-manager/)
  - [Ublock origin](https://ublockorigin.com/)
  - [StartPage](https://addons.mozilla.org/es/firefox/addon/startpage-private-search/?src=external-marketing-pages)
  - [I don't care about cookies](https://addons.mozilla.org/es/firefox/addon/i-dont-care-about-cookies/)
  - [Firefox Relay](https://addons.mozilla.org/en-GB/firefox/addon/private-relay/?utm_source=fx-relay&utm_medium=banner&utm_campaign=install-addon)
- **Iterm2**
  - Install 🍺 `brew install iterm2`
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
  - **Fira Fonts**
  - Install 🍺 `brew tap homebrew/cask-fonts && brew install --cask font-fira-code`
- **Mullvad VPN**
  - **Advanced settings**
  - Turn ✅ "Always require VPN"
  - **Preferences**
  - Turn ✅ Everything
  - Turn ❌ "Beta Program"
- **Lulu Firewall**
  - **First start**
  - Turn ❌ "Allow Apple Programs"
  - Turn ❌ "Allow Already Installed Applications"
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
  - View settings [here](https://github.com/ivoarch/.my-macbook-setup/blob/main/vscode/settings.json)
