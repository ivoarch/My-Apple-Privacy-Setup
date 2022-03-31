# My macOS (M1 chip) Setup Guide

# 1) Setting up computer name

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

# 2) Install Software

## 2.1) Xcode and cli tools

```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

```
xcode-select --install
```

## 2.2) Install HomeBrew 🍻

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

## Terminal Setup

- Terminal [Iterm2](https://iterm2.com)
- ZSH + [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- Terminal Prompt [Spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
- Font [Fira Code](https://github.com/tonsky/FiraCode)
- Color theme [Dracula](https://draculatheme.com/iterm)

### Install Iterm2

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

Set `ZSH_THEME="spaceship"` in your `.zshrc` config file.

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

## VPN Setup

### Install Mullvad VPN

- [Download](https://mullvad.net/download/) the latest version of the app from our website.
- Instruction to install click [here](https://mullvad.net/es/help/install-and-use-mullvad-app-macos/) .

### Setup SSH

- Create ssh key by following the steps:

Run in terminal app

```
ssh-keygen -t ed25519 -C "<your email>"
```

- Press Return when asked **"Enter file in which to save the key"**
- Press Return when asked **"Enter passphrase"** and **"Enter same passphrase again"**

By default both private and public keys will be located in your `$HOME/.ssh` directory.

Run: `pbcopy < ls ~/.ssh/id_ed25519.pub` which copies the file into your clipboard .

## Development Environment

### Android Dev

- [Android file transfer](https://www.android.com/filetransfer/)

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

- [Docker](https://www.docker.com) -
- [Visual studio Code](https://code.visualstudio.com) - Default editor
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
- [Git](https://git-scm.com) - Version control system
- [UTM](https://mac.getutm.app) - Virtual Machines

## Office & Productivity Tools

- [Microsoft Office 365](https://www.office.com) - Microsoft office package

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

- [Appcleaner](https://freemacsoft.net/appcleaner/) - Application which allows you to thoroughly uninstall unwanted apps.
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12) - For keeping your Mac awake
- [Rectangle](https://rectangleapp.com) - Move and resize windows in macOS using keyboard shortcuts .
- [Maccy](https://maccy.app) - Clipboard manager .
- [Keka](https://www.keka.io/es/) - The macOS file archiver.
- [DeepL](https://www.deepl.com/translator) - Translator .
- [Telegram](https://telegram.org) - Chat .
- [Hiddenbar](https://github.com/dwarvesf/hidden) - Hide menu bar items to give your Mac a cleaner look.
- [Tutanota](https://tutanota.com/es/) - is an end-to-end encrypted email software and freemium hosted secure email service

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

## Security tools

- [Bitwarden](https://bitwarden.com/) - Open Source password manager .
- [Cryptomator](https://cryptomator.org) - Protect your data in the cloud .
- [Micro Snitch](https://www.obdev.at/products/-microsnitch/index.html) - A microphone & camera activity monitor .
- [Internet Access Policy Viewer](https://obdev.at/products/iapviewer/index.html) - A better view on privacy.
- [Mullvad](https://mullvad.net) - Open-source commercial VPN service based in Sweden.
- [Secretive](https://github.com/maxgoedjen/secretive) - is an app for storing and managing SSH keys in the Secure Enclave .

```
brew install --cask \
  bitwarden \
  micro-snitch \
  cryptomator \
  secretive
```

# 3) System Preferences

- **Generel**
  - Use dark menu bar and dock
  - Turn ✅ "Ask to keep changes when closing documents"
  - Turn ✅ "Close windows when quitting an app"
- **Dock**
  - Remove unused apps add only favorites to Dock
  - Turn ❌ "Show recent applications in Dock"
  - Turn ✅ "Minimize windows into their application’s icon"
  - Turn ✅ "Show indicators for open applications"
  - Set dock size to "50"
  - `$ defaults write com.apple.dock tilesize -int 50; killall Dock`
- **Accessibility**
  - Turn ✅ "Three finger drag"
  - Turn ✅ "Use scroll gesture with modifier keys to zoom"
- **Battery**
  - Turn ✅ "Baterry Show Percentage"
- **Display**
  - Turn ✅ "Nightshift"
  - Schedule "Sunset to Sunrise"
- **Touch ID**
  - Setup for everything
- **Software Updates**
  - Turn ✅ "Automatically check for updates"
  - Install updates
- **Users and Groups**
  - Setup administrator account (don´t name Admin! use other name) .
  - Create a second standart account (regulate user for every day tasks) . Name this account Admin .
- **Notifications**
  - Turn ❌, "Except for App Store, Calendar, FaceTime, Mail, Messages, Reminder, Safari, Telegram"
- **Siri**
  - Disable
- **Trackpad**
  - Turn ✅ "Tap to Click"
  - Speed up cursor
- **Keyboard**
  - **Text**
  - Turn ❌ "Add full stop with double-space"
  - Turn ❌ "Use smart quotes and dashes"
  - use " for double quotes
  - use ' for single quotes
  - **Sources**
  - Add Bulgarian layout
- **Spotlight**
  - Disable Spotlight except for Applications and System Preferences
- **Mission Control**
  - **Hot Corners**
  - Turn ❌ all
- **Apple ID**
  - **iCloud**
  - Turn ✅ "Hide My Email"
- **Sharing**
  - Make sure only you want for sharing is enabled
- **Security and Privacy settings**
  - **General**
  - Set Require Password to immediately
  - **FileVault**
  - Turn ✅ "FileVault"
  - **Firewall**
  - Turn ✅ "Firewall"
  - Turn ❌ "Automatically allow signed software to receive incoming connections"
  - **Privacy**
  - Set default privacy settings for apps

# 4) Software Preferences

- **Finder**
  - **General**
  - Turn ❌ to show hard disks on desktop
  - Turn ❌ to show connecting servers
  - Setup to open new windows in `$HOME` user directory
  - **Tags**
  - Create custom Tags - Work 🟢, Important 🔴, Curses 🔵
  - Remove unused tags
  - **Sidebar**
  - Activate all Favorites in Sidebar except of
  - Show all Filename Extensions
  - Remove Items from Bin after 30 Days
  - **Advanced**
  - Turn ✅ all options
  - Setup search in directory actual
  - **View**
  - Turn ✅ to show path bar
  - Turn ✅ to show status bar
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
  - **Extensions**
  - Adguard (enable all)
  - Bitwarden
- **Firefox**
- Install `$> brew install --cask firefox`
- Setup Firefox Privacy – The Complete How-To Guide for 2022 click [here](https://restoreprivacy.com/firefox-privacy/)
- Extensions
  - [Bitwarden](https://addons.mozilla.org/es/firefox/addon/bitwarden-password-manager/)
  - [Ublock origin](https://ublockorigin.com/)
  - [StartPage](https://addons.mozilla.org/es/firefox/addon/startpage-private-search/?src=external-marketing-pages)
  - [I don't care about cookies](https://addons.mozilla.org/es/firefox/addon/i-dont-care-about-cookies/)
