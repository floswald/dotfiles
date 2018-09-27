# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx lwd)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:${PATH}"
export PATH="${PATH}:/Library/Frameworks/R.framework/Resources/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#eval `ssh-agent -s`
ssh-add -K ~/.ssh/id_rsa
#eval `keychain --eval id_rsa`

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lyx="/Applications/Lyx2.2/LyX.app/Contents/MacOS/lyx"
export JULIA_EDITOR="sublime"

# I am using the homebrew gcc compiler suite
# I did
# ln -s /usr/local/bin/gcc-4.9 /usr/bin/gcc
# ln -s /usr/local/bin/g++-4.9 /usr/bin/g++
# ln -s /usr/local/bin/cpp-4.9 /usr/bin/cpp
# compiler flags to /usr/local
#export CFLAGS="-I/usr/local/include -L/usr/local/lib"
#export CPPFLAGS="$CFLAGS"
#export LDFLAGS="-L/usr/local/lib"
#alias vim="/usr/local/Cellar/macvim/7.4-72/MacVim.app/Contents/MacOS/Vim"
#alias sphinx="/Users/florianoswald/git/sphinx-api-any/bin/sphinx-api-any"

# exports for PFUNIT testing framework
export F90=gfortran
export F90_VENDOR=GNU
export PFUNIT=/Applications/pfunit

# Google test options
export GTEST_COLOR=yes

# Knitro variables
export KNITRODIR=/Applications/knitro-10.1.1-z-MacOSX-64
export LD_LIBRARY_PATH=${KNITRODIR}/lib:$LD_LIBRARY_PATH
export INCLUDE=${KNITRODIR}/include/knitro.h
export DYLD_LIBRARY_PATH=${KNITRODIR}/lib:$DYLD_LIBRARY_PATH

# Ipopt homebrew installation
export DYLD_LIBRARY_PATH=/usr/local/Cellar/ipopt/3.12.9/lib:$DYLD_LIBRARY_PATH


# function for autojump 
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# this makes it open faster
skip_global_compinit=1
clear

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# AWS
export AWS_ID=
export AWS_SECKEY=

# Github ScPo org token:

# R alias
alias R="$(which R) --no-save"
export FRED_API_KEY=

# GCC colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# google compute gcloud
source /Applications/google-cloud-sdk/path.zsh.inc
export PATH=$PATH:/Applications/google-cloud-sdk/bin

# add bin to path
export PATH=$PATH:${HOME}/bin


# github access token

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home"

# tasmanian
export PATH=$PATH:/Applications/TSG/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/Applications/TSG/lib/
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/Applications/TSG/include/
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/Applications/TSG/include/
export LIBRARY_PATH=$LIBRARY_PATH:/Applications/TSG/lib/

# node.js
export NODE_PATH='/usr/local/lib/node_modules'
