#fastfetch
echo
fastfetch
echo

# Update terminal title with current directory in Zsh
precmd() {
  print -Pn "\e]2;zsh - %~\a"
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

# creating an alias for exit and calling it x to exit out, more simpler
alias x='exit'
#creating an "alias" for cd ~/Documents/ and calling it home for my own custom home directory
alias home='cd ~/Documents/'
alias config='cd ~/.config/'
alias clr='clear'
# creating an "alias" for touch and calling it cf for create file
alias cf='touch'
# creating an "alias" for cd ../ and calling it bk for back or backwards
alias bk='cd ../'

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

bindkey -r "^[x"

