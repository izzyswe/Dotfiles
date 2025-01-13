# Terminal Config

My setup.

### Wezterm Config
![wezterm_setup](https://github.com/user-attachments/assets/3855c8e3-1a47-489f-a294-87febc0be00f)

### Alacritty Config
![alacritty_setup](https://github.com/user-attachments/assets/53626a20-177b-45df-8f4c-ea26f38f8912)

### Ghostty Config (CURRENT TERMINAL)
<img width="1674" alt="Screenshot 2025-01-13 at 2 41 47 PM" src="https://github.com/user-attachments/assets/8b7db171-ff10-4e06-9d8e-7bde61bce911" />

## INSTALLATION
<br>

### INSTALLING POWERLEVEL10K
---
you may need to install powerlevel10k if you want to my p10k file configuration
1. install use `brew install powerlevel10k` <br> **[ DISCLAIMER ]** powerlevel10k is MACOS only, use starship instead if you prefer universal use
2. in the terminal, copy & paste the following <br> `echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>/.zshrc`
3. this will echo or paste `source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme' into the file for you without touching the file
4. by this point, you can paste my configuration into your `~/` directory
5. however if you want configure it to your default liking
6. type 'source ~/.zshrc' and quit and restart the terminal
7. this will activate powerlevel10k and open the configuration wizard
8. happy configuring!

using fasfetch because neofetch is not being maintained anymore
### INSTALLING FASTFETCH
---
1. install use `brew install fastfetch`
2. if you like to configure it you can manually set it up in your `~/.config/` directory or generate one
3. to generate use `fastfetch --gen-config`
4. delete `config.jsonc` and replace it
5. or copy & paste
6. to see your fastfetch use `fastfetch`
7. happy configuring!

### INSTALLING WEZTERM
---
1. install use `brew install --cask wezterm`
2. go to config directory using `cd ~/.config/`
3. if you download my config, drop it in the `~/.config` otherwise
4. create a wezterm directory using `mkdir wezterm`
5. create a fle using `touch wezterm.lua`
6. otherwise happy configuring!
7. (sometimes you get issues with wezterm not recognizing it in the `.config` folder, as it generally recognizes it in `~/.wezterm.lua`
   <br> if that's the case;
     - go to `~/.zshrc` and put `export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"` and run `source ~/.zshrc`
     - or in your terminal use `ln -s ~/.config/wezterm/wezterm.lua ~/.wezterm.lua` to link to `~/.wezterm.lua` existing or not

### INSTALLING ALACRITTY & TMUX
---
1. go to terminal and type `brew install alacritty` and the following for TMUX `brew install tmux`
2. then change directory for tmux using `cd ~/.tmux.conf`
3. (if you dont have the file) create directory for alacritty using `mkdir ~/.config/alacritty` then create file using `touch ~/.config/alacritty/alacritty.toml`
4. copy and paste for the appropriate files
5. happy configuring!

### INSTALLING GHOSTTY
1. Use `brew install ghostty`
2. optionally go to `https://ghostty.org/download` and click `universal Binary`
3. in the menu bar, go to `Ghostty` and click settings
4. Copy and Paste the configurations
5. Save and In Menu Bar click `Reload Configuration`
6. Happy Configuring

aaand idk for linux and windows sorry, one day I will have to suffer and learn.

to reset and/r activate your tmux config
use `tmux source-file ~/.tmux.conf`

<br>

## More Resource
`Powerlevel10k` <br>
https://github.com/romkatv/powerlevel10k/tree/master <br>

`Ghostty` <br>
https://ghostty.org/download <br>
https://ghostty.org <br>
https://ghostty.org/docs <br>
gui configuration: <br>
https://ghostty.zerebos.com/app <br>


`Wezterm` <br>
https://wezfurlong.org/wezterm/index.html <br>
https://wezfurlong.org/wezterm/config/files.html <br>

`Alacritty` <br>
https://alacritty.org/config-alacritty.html <br>
https://github.com/alacritty/alacritty <br>
https://github.com/alacritty/alacritty-theme <br>

`Fastfetch` <br>
https://github.com/fastfetch-cli/fastfetch <br>

`TMUX` <br>
https://github.com/tmux/tmux/wiki <br>

`[MY SETUP INSPIRATION] Josean Martinez - How To Make Your Boring macOS Terminal Amazing With Alacritty` <br>
https://www.youtube.com/watch?v=uOnL4fEnldA&t=602s
