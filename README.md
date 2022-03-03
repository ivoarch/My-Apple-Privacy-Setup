# My macOS M1 Setup Guide

WORK IN PROGRESS !!


## Setup HomeBrew

### Install Command Line Tools

```
xcode-select --install
```
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

### Python

- [Miniforge](https://github.com/conda-forge/miniforge) arm64 (Apple Silicon)

```
./Miniforge3-MacOSX-arm64.sh
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

## Security tools

* [AdGuard](https://adguard.com/es/welcome.html) - Adblocker
* [Bitwarden](https://bitwarden.com) - Open source Password manager
* [Micro Snitch](https://www.obdev.at/products/-microsnitch/index.html) - A microphone & camera activity monitor
* [Internet Access Policy Viewer](https://obdev.at/products/iapviewer/index.html) - A better view on privacy.

```
brew install --cask \
  bitwarden \
  micro-snitch 
```

## Office & Productivity Tools

* [Microsoft Office 365](https://www.office.com) - Microsoft office package
 

## Other software i use
 
* [Rectangle](https://rectangleapp.com) - Move and resize windows in macOS using keyboard shortcuts or snap areas
* [Maccy](https://maccy.app) - Clipboard manager
* [Keka](https://www.keka.io/es/) - The macOS file archiver.
* [DeepL](https://www.deepl.com/translator) - Translator
* [Telegram](https://telegram.org) - Chat

```
brew install --cask \
  rectangle \
  maccy \
  keka \
  telegram \
  deepl
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
* **Security and Privacy**
  - General:
  - Set Require Password to **immediately** from the drop down menu
  - Turn on FileVault 
  - Turn on Firewall
  - Don’t send search queries to Apple
* **Storage**
  - Remove unused apps
