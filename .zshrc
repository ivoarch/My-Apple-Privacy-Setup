# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         extract         
         zsh-autosuggestions
         zsh-syntax-highlighting
	       colored-man-pages)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/ivo/bin"
# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

# Prevent Homebrew from gathering analytics
export HOMEBREW_NO_ANALYTICS=1
# Enable quarantining of Homebrew-Cask's downloads
export HOMEBREW_CASK_OPTS=--no-quarantine
# For Sectrive
export SSH_AUTH_SOCK=/Users/ivo/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General
alias cp='cp -RPv'
alias mk='mkdir -p'
alias mkdir='mk'
alias mv='mv -i'
alias wget='wget -c'
alias history='fc -l 1'
alias h='history'
alias ssh='ssh -X'
alias free='free -m'
alias c='clear'
alias cc='cd;clear'
alias q='exit'
alias Q='q'
alias t='touch'
alias j='jobs'
alias tree="tree -C"
alias host="host -v"

# Docs
alias info='pinfo'

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# make rm verbose and ask for confimation before deletion
alias rm='rm -vi'

# No correct commands
alias man='nocorrect man'
alias pinfo='nocorrect pinfo'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias mkdir='nocorrect mkdir'
alias sudo='nocorrect sudo'
alias git='nocorrect git'
alias ack='nocorrect ack'
alias cp="nocorrect cp"
alias mcd="nocorrect mcd"
alias rm="nocorrect rm"

# Copy public key to clipboard:
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

mc () {
  # Create a new directory and enter it
  mkdir -p "$@" && cd "$@"
}

mp3 () {
  # Download mp3 from Youtube
	youtube-dl -x --audio-format mp3 --embed-thumbnail --add-metadata --output "~/Music/%(title)s.%(ext)s" "$1"
}

# Download mp4 video from Youtube
alias mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"

# IP Adress info
alias localip="ipconfig getifaddr en0"
alias myip="curl ifconfig.me"

#### macOS Operating system specific aliases
# Brew update
alias brupdate="brew update && brew upgrade && brew doctor && brew cleanup"

# macOS Monterey’s Built-In Network Quality Test
alias speedtest="networkQuality"

# Remove .DS_store from dir & subdir
alias rmds="find . -name '*.DS_Store' -type f -delete"

# Flush Directory Service cache 
alias flush='dscacheutil -flushcache'

# https://github.com/CooperRS/decrypt-otpauth-files
alias otp-decrypt="pipenv run python decrypt_otpauth.py decrypt_backup --encrypted-otpauth-backup" "$1"