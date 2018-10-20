# Wolfgang's Dotfiles

My private dotfiles. Feel free to snoop around.

Currently contains my configuration for:
* OS X defaults
* iTerm
* Hammerspoon 
* oh my zsh 

Additional requirements:
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

Some Things i seem to have installed additionally
```
$history | grep brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"\n
brew install jenv
brew install cask
brew install homebrew-cask
brew tap caskroom/versions
brew cask install java8
brew install maven
brew install watch
brew install htop
brew install jq
brew install git-flow-avh
brew install keybase
brew cask install mounty
brew install heroku
brew install icdiff
brew cask install real-vnc
brew install httpie
brew install ghostscript
brew install coreutils
brew cask install vagrant
brew cask install virtualbox-extension-pack
brew install gpg
brew install skype
brew install mat
brew install nuget
brew install nmap
brew install flyway
brew install gitk
brew install gitter
brew install bat
brew install wget
brew install unrar
brew install hub
brew install shellcheck
brew install mailcatcher
brew cask install android-platform-tools
brew cask install the-unarchiver

```

(at some point in time, I'll script the installation of those. Probably when I get my next machine.)


Some scripts expect this repostiory to be located at `~/Documents/dotfiles` (you're welcome, future me.)
