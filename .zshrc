# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

fastfetch
echo
# Update terminal title with current directory in Zsh
precmd() {
  print -Pn "\e]2;zsh - %1~\a"
}

# zsh
source <(fzf --zsh)
# created a function for the custom cd command
function cd() {
  # check if no argument ($1) has passed after pressing the enter key, then it will...
  if [[ -z $1 ]]; then
    # find all directory (-type d) in it current directory (.) and send it as an input to fzf into one command and assign it to selected_dir
    selected_dir=$(find . -type d | fzf)
    #when it is triggered, we will check if we selected a directory in fzf and if we did then...
    if [[ -n $selected_dir ]]; then
      # the fzf provides the selected directory and we will call the built in cd command to execute and change the directory
      builtin cd "$selected_dir"
    fi
    # if the user decides to explicitly write the directory themselves
  else
    # Normal cd behavior if an argument is passed
    builtin cd "$@"
  fi
}

function JavaRun() {
    if [[ -f "$1" && "$1" == *.java ]]; then
        javac "$1" && java "${1%.java}"
    else
        echo "Usage: runjava filename.java does not exist"
    fi
}

# alias scenebuilder='/Applications/SceneBuilder.app/Contents/MacOS/SceneBuilder'
# function scenebuilder() {
#   open -a "SceneBuilder" "$(pwd)/app/src/main/resources/${1%.fxml}.fxml"
# }

function scenebuilder() {
  /Applications/SceneBuilder.app/Contents/MacOS/SceneBuilder "$(pwd)/app/src/main/resources/${1%.fxml}.fxml"
}

# creating an alias for exit and calling it x to exit out, more simpler
alias x='exit'
#creating an "alias" for cd ~/Documents/ and calling it home for my own custom home directory
alias home='cd ~/Documents/'
alias clr='clear'
# creating an "alias" for touch and calling it cf for create file
alias cf='touch'
alias config='cd ~/.config/'
# creating an "alias" for cd ../ and calling it bk for back or backwards
alias bk='cd ../'
alias college='cd ~/Documents/college/'
alias projects='cd ~/Documents/projects/'
alias bvim='NVIM_APPNAME=BeanVim nvim'
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"

# PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"

# https://github.com/zsh-users/zsh-autosuggestions/tree/master
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
