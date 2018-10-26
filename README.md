# Wolfgang's Dotfiles

My private dotfiles. Feel free to snoop around.

Currently contains my configuration for:
* OS X defaults
* iTerm
* Hammerspoon 
* oh my zsh 
* fzf
* VS Code

Additional requirements (shouldn't I install them via brew?):
* https://github.com/Hammerspoon/hammerspoon/ 
* https://github.com/robbyrussell/oh-my-zsh 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
* https://github.com/bhilburn/powerlevel9k 
```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```
* https://github.com/ryanoasis/nerd-fonts
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

Some scripts expect this repostiory to be located at `~/Documents/dotfiles` (you're welcome, future me.)
