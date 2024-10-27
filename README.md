# Alacritty-config

My setup.

![alacritty_setup](https://github.com/user-attachments/assets/53626a20-177b-45df-8f4c-ea26f38f8912)

you may need to install powerlevel10k if you want to my p10k file configuration
### INSTALLING POWERLEVEL10K
1. install use `brew install powerlevel10k` <br> **[ DISCLAIMER ]** powerlevel10k is MACOS only, use starship instead if you prefer universal use
2. in the terminal, copy & paste the following <br> `echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>/.zshrc`
3. this will echo or paste `source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme' into the file for you without touching the file
4. by this point, you can paste my configuration into your `~/` directory
5. however if you want configure it to your default liking
6. type 'source ~/.zshrc' and quit and restart the terminal
7. this will activate powerlevel10k and open the configuration wizard
8. happy configuring!

### INSTALLING ALACRITTY & TMUX
Mac OSX
1. go to terminal and type `brew install alacritty` and the following for TMUX `brew install tmux`
2. then change directory for tmux using `cd ~/.tmux.conf`
3. (if you dont have the file) create directory for alacritty using `mkdir ~/.config/alacritty` then create file using `touch ~/.config/alacritty/alacritty.toml`
4. copy and paste for the appropriate files
5. happy configuring!

aaand idk for linux and windows sorry, one day I will have to suffer and learn.

to reset and/r activate your tmux config
use `tmux source-file ~/.tmux.conf`

<br>

## More Resource
`Powerlevel10k` <br>
https://github.com/romkatv/powerlevel10k/tree/master <br>

`Alacritty` <br>
https://alacritty.org/config-alacritty.html <br>
https://github.com/alacritty/alacritty <br>
https://github.com/alacritty/alacritty-theme <br>

`TMUX` <br>
https://github.com/tmux/tmux/wiki <br>

`[MY SETUP INSPIRATION] Josean Martinez - How To Make Your Boring macOS Terminal Amazing With Alacritty` <br>
https://www.youtube.com/watch?v=uOnL4fEnldA&t=602s
