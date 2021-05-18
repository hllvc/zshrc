# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export ZSH="/home/hllvc/.oh-my-zsh"

# export color
export TERM=xterm-256color

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="jonathan"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-vi-mode
	# zsh-vim-mode
)


source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='nvim'
else
 export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc='nvim ~/.zshrc'
alias ohmyzsh='nvim ~/.oh-my-zsh'
alias zsu='source ~/.zshrc'

# editor aliases
alias svi="sudo nvim"
# alias t='gnome-terminal'
alias n="nautilus ."

# system aliases
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias towin='sudo grub-reboot 2; sudo reboot'
alias die='shutdown now'

# other aliases
alias mkdir='mkdir -p'
alias pacman='sudo pacman'
alias ufw='sudo ufw'
alias lock='sudo chmod a=-xrw'
alias unlock='sudo chmod a=+xrw'
alias mkex='sudo chmod +x'
alias q='exit'
alias c='clear'
# alias hspot='sudo create_ap --config /etc/create_ap.conf'
# alias hstop='sudo create_ap --stop wlan0'
alias h='history'

# git aliases
alias g='git'
alias gc='git clone'
alias gcm='git clone https::/github.com/hllvc/$1'
alias gi='git init'
alias gs='git status'
alias gb='git branch'
alias sw='git switch'
alias fetch='git fetch origin'
alias u='git add .'
alias com='git commit -m'
alias push='git push origin'
alias pull='git pull origin'
alias gra='git remote add origin'
alias grall='git remote -v'

# navigation aliases
alias o='xdg-open'
alias gh='cd ~/github'
alias dc='cd ~/Documents'
alias pic='cd ~/Pictures'
alias dw='cd ~/Downloads'
alias th='cd ~/.themes'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# directory aliases
alias tr='trash'
alias rmd='rm -rfv'
alias srmd='sudo rm -rfv'
alias la='ls -A'
alias ll='ls -gh'
alias f='find . | grep'

# archive aliases
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

cpg () {
	if [ -d "$2" ];then
		cp $1 $2 && cd $2
	else
		cp $1 $2
	fi
}

mvg () {
	if [ -d "$2" ];then
		mv $1 $2 && cd $2
	else
		mv $1 $2
	fi
}

mkdg () {
	mkdir -p $1
	cd $1
}

# clip () {
# 	cat $1 | xclip -selection clipboard
# }

# cpp () {
# 	IFS=.
# 	read BEFORE AFTER <<< $1
# 	c++ $1 -o $BEFORE
# }

mksh () {
	touch $1
	echo "#!/bin/sh\n\n" > $1
	chmod +x $1
	nvim +3 $1
}

vih () {
	if [[ $1 = "hpp" ]]; then
		nvim -O include/$2.hpp src/$2.cpp
	elif [[ $1 = "h" ]]; then
		nvim -O include/$2.h src/$2.c
	fi
}

bup () {
	if [[ -d $1 ]]; then
		sudo cp -r $1 $1.old
	else
		sudo cp $1 $1.old
	fi
	echo "delete original (Y/n): "
	read choice
	if [[ ! $choice = "n" ]]; then
		if [[ -d $1 ]]; then
			sudo rm -rfv $1
		else
			sudo rm -fv $1
		fi
	fi
}

res () {
	tail=$(awk -F. '{print $NF}' <<< $1)
	set -F; IFS=.; arr=( $(echo $1) )
	arr=( ${arr[@]/$tail} )
	skip=true
	for item in ${arr[@]};do
		if ($skip); then
			skip=false
			newname+=$item
			continue
		fi
		newname+=".$item"
	done
	if [[ -d $1 ]]; then
		sudo cp -r $1 $newname
	else
		sudo cp $1 $newname
	fi
	echo "delete original (Y/n): "
	read choice
	if [[ ! $choice = "n" ]]; then
		if [[ -d $1 ]]; then
			sudo rm -rfv $1
		else
			sudo rm -fv $1
		fi
	fi
}

vi () {
	if [[ $1 = '.' ]]; then
		nvim
	elif [[ -d $1 ]]; then
		cd $1; nvim $1
	else
		nvim $1
	fi
}

ZVM_VI_EDITOR=nvim
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_NEX
ZVM_VI_HIGHLIGHT_BACKGROUND=#3c3836
ZVM_LAZY_KEYBINDINGS=false
export KEYTIMEOUT=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
