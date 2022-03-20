# My macOS M1 Setup Guide

WORK IN PROGRESS !!


## Xcode and cli tools

```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

```
xcode-select --install
```

## Setup HomeBrew

### Install HomeBrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
#### For X86_64 packages 

```
arch -x86_64 zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For installing the packages using Intel, you can now use:
 
```
arch -x86_64 brew install foo
```
## Terminal setup
- Terminal [Iterm2](https://iterm2.com)
- ZSH + [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- Terminal Prompt [Spaceship](https://github.com/spaceship-prompt/spaceship-prompt) 
- Font [Fira Code](https://github.com/tonsky/FiraCode)
- Color theme [Dracula](https://draculatheme.com/iterm)

### Install iterm2

```
brew install --cask iterm2
```

### Install Oh My ZSH and plugins (zsh-autosuggestions, zsh-syntax-highlighting)

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Add to `.zshrc` config file

```
plugins=(zsh-autosuggestions
         zsh-syntax-highlighting)
```

### Install Spaceship prompt 

```
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Set ```ZSH_THEME="spaceship"``` in your `.zshrc` config file.

### Install Fira fonts

In the [downloaded TTF folder](https://github.com/tonsky/FiraCode/releases):

1. Select all font files
1. Right click and select `Open` (alternatively `Open With Font Book`)
1. Select "Install Font"

### Dracula theme 

```
git clone https://github.com/dracula/iterm.git
```

Activating theme
**iTerm2 > Preferences > Profiles > Colors Tab**
Open the **Color Presets...** drop-down in the bottom right corner
Select **Import...** from the list
Select the **Dracula.itermcolors** file
Select the **Dracula** from **Color Presets**...

## Development Environment

### Android Dev

* [Android file transfer](https://www.android.com/filetransfer/) 

### Python

- [Miniforge](https://github.com/conda-forge/miniforge) arm64 (Apple Silicon)

```
./Miniforge3-MacOSX-arm64.sh
```

### Java/JDK

```
brew install openjdk
```

## Development tools
* [Docker](https://www.docker.com) - 
* [Visual studio Code](https://code.visualstudio.com) - Default editor
  - Extensions
  - [Colorize](https://marketplace.visualstudio.com/items?itemName=kamikillerto.vscode-colorize)
  - [Docker](https://marketplace.visualstudio.com/itemsitemName=ms-azuretools.vscode-docker)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Python/Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Python Preview](https://marketplace.visualstudio.com/items?itemName=dongli.python-preview)
  - [Rainbow Brackets](https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets)
  - [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)
  - [Dracula theme](https://marketplace.visualstudio.com/items?itemName=dracula-theme.dracula)
  - [Markdown preview enhanced]()
  - [Material Icon theme]()
* [Git](https://git-scm.com) - Version control system  
* [UTM](https://mac.getutm.app) - Virtual Machines

## Office & Productivity Tools

* [Microsoft Office 365](https://www.office.com) - Microsoft office package
 
## Cli Tools

```
brew install \
  bat \
  coreutils \
  tree \
  htop \
  exa \
  youtube-dl \
  neofetch \
  imagemagick
```

## Other software i use

* [Appcleaner](https://freemacsoft.net/appcleaner/) - Application which allows you to thoroughly uninstall unwanted apps.
* [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) - For keeping your Mac awake
* [Rectangle](https://rectangleapp.com) - Move and resize windows in macOS using keyboard shortcuts  .
* [Maccy](https://maccy.app) - Clipboard manager .
* [Keka](https://www.keka.io/es/) - The macOS file archiver.
* [DeepL](https://www.deepl.com/translator) - Translator .
* [Telegram](https://telegram.org) - Chat .
* [Hiddenbar](https://github.com/dwarvesf/hidden) - Hide menu bar items to give your Mac a cleaner look.
* [Tutanota](https://tutanota.com/es/) - is an end-to-end encrypted email software and freemium hosted secure email service

```
brew install --cask \
  appcleaner \
  rectangle \
  maccy \
  keka \
  telegram \
  deepl \
  hiddenbar \
  tutanota

```

## System Preferences

* **Generel**
  - Use dark menu bar and dock
Ask to keep changes when closing documents **on**
Close windows when quitting an app **on**
* **Dock**
  - Remove unused apps add only favorites to Dock
  - Show recent applications in Dock **off**
  - Minimize windows into their application’s icon **on**
  - Show indicators for open applications **on**
  - Set dock size to 50

```
defaults write com.apple.dock tilesize -int 50; killall Dock

```
* **Battery**
  - Show Percentage **on**
* **Display**
  - Nightshift **on** 
  - Schedule: Sunset to Sunrise
* **Security**
  - Setup Touch ID
* **Notifications**
  - **off**, except for App Store, Calendar, FaceTime, Mail, Messages, Reminder, Safari, Telegram
* **Siri**
  - Disable
* **Trackpad**
  - Tap to Click
  - Speed up cursor
* **Keyboard**
  - Text
  - disable "Add full stop with double-space"
  - disable "Use smart quotes and dashes"
  - use " for double quotes
  - use ' for single quotes
  - Sources
  - Add Bulgarian lang
* **Spotlight**
  - Disable Spotlight except for Applications and System Preferences
* **Mission Control**
  - Hot Corners: disable all
* **Finder**
  - Sidebar:
  - Activate all Favorites 
  - Create custom Tags - Work, Personal, Important
  - Show all Filename Extensions
  - Remove Items from Bin after 30 Days
  - Open new window in user $HOME directory
  - Search in directory actual
  - View:
  - Show path bar
  - Show status bar
* **Sharing**
  - "Change computer name"
  - Also terminal:
  - sudo scutil --set ComputerName "newname"
  - sudo scutil --set LocalHostName "newname"
  - sudo scutil --set HostName "newname"
  - "Make sure only AirPlay file sharing is enabled"
  - Don’t send search queries to Apple
* **Storage**
  - Remove unused apps


## Security and Privacy settings

### Security tools

* [Bitwarden](https://bitwarden.com/) - Password manager
* [Cryptomator](https://cryptomator.org) - Protect your data in the cloud
* [Micro Snitch](https://www.obdev.at/products/-microsnitch/index.html) - A microphone & camera activity monitor
* [Internet Access Policy Viewer](https://obdev.at/products/iapviewer/index.html) - A better view on privacy.
* [Mullvad](https://mullvad.net) - Open-source commercial VPN service based in Sweden. 

```
brew install --cask \
  bitwarden \
  micro-snitch \
  cryptomator
```

### Automate MacOS Updates

* Apple menu () > System Preferences > then click Software Updates > Check the tick boxes of “Automatically check for updates” & “Install App updates”

### Disk Encryption

* Apple menu () > System Preferences > then click Security & Privacy > FileVault > Turn ON FileVault
### Firewall

* Apple menu () > System Preferences > then click Security & Privacy > Firewall > Turn ON Firewall
* Uncheck 'Automatically allow signed software to receive incoming connections'.

### Enabling the Lock Screen

* Apple menu () > System Preferences > then click Security & Privacy > General > Set Require Password to immediately 

### Set default Privacy & Security settings

* Apple menu () > System Preferences > then click Security & Privacy

### More Mail privacy (iCloud+ only)

* Apple menu () > System Preferences > Apple ID > iCloud > Hide My Email

### Setup SSH

* Create ssh key by following the steps:

Run in terminal app

```
ssh-keygen -t ed25519 -C "<your email>"
```

* Press Return when asked **"Enter file in which to save the key"**
* Press Return when asked **"Enter passphrase"** and **"Enter same passphrase again"**

By default both private and public keys will be located in your `$HOME/.ssh` directory.

Run: `pbcopy < ls ~/.ssh/id_ed25519.pub` which copies the file into your clipboard .

### Setup Firefox

* Set as default browser
* Firefox Privacy – The Complete How-To Guide for 2022 click [here](https://restoreprivacy.com/firefox-privacy/)
* Extensions
  - [Bitwarden](https://addons.mozilla.org/es/firefox/addon/bitwarden-password-manager/)
  - [Ublock origin](https://ublockorigin.com/) 
  - [StartPage](https://addons.mozilla.org/es/firefox/addon/startpage-private-search/?src=external-marketing-pages)
  - [I don't care about cookies](https://addons.mozilla.org/es/firefox/addon/i-dont-care-about-cookies/)

## Install Mullvad VPN

* [Download](https://mullvad.net/download/) the latest version of the app from our website.
* Instruction to install click [here](https://mullvad.net/es/help/install-and-use-mullvad-app-macos/) .
