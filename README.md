# Wolfgang's Dotfiles

My private dotfiles. Feel free to snoop around.

Currently contains my configuration for:

* OS X defaults
* Kitty
* Hammerspoon
* oh my zsh
* fzf / bat / git-delta / git fuzzy ...
* VS Code

Additional requirements (shouldn't I install them via brew?):

* https://github.com/Hammerspoon/hammerspoon/
* https://github.com/robbyrussell/oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* https://github.com/romkatv/powerlevel10k

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

* https://sdkman.io/install
```sh
curl -s "https://get.sdkman.io" | bash
```

Some scripts expect this repostiory to be located at `~/Documents/dotfiles` (you're welcome, future me.)
