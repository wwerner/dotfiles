# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# POWERLEVEL9K_MODE='nerdfont-complete'

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time battery)

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
plugins=(git npm docker)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
bindkey "^[d" delete-word
# eval "$(jenv init -)"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HEROKU_ORGANIZATION=bluerain

# private aliases
alias lg=lazygit
alias gfff='git flow feature finish'
alias gfbs='git flow bugfix start'
alias gffs='git flow feature start'

alias gd='git icdiff'
# git safe origin
# -
# save local work to a separate branch and revert to the current branches origin
gso()
{
  branch=$(git rev-parse --abbrev-ref HEAD); qualifier=$(date -u +"%Y-%m-%dT%H%M%S") \
  && git add . \
  && git commit -m "Saving local work from $branch to local/stash/$branch-$qualifier" \
  && git branch local/stash/$branch-$qualifier \
  && git checkout $branch \
  && git fetch origin \
  && git reset --hard origin/$branch
}

alias nrd='npm run dev'
alias nrb='npm run build'

alias cat=bat
export BAT_THEME="Monokai Extended Bright"
alias ping=prettyping

# Images beautification, see https://twitter.com/thingskatedid/status/1316074032379248640
alias icat="kitty icat --align=left"
alias isvg="rsvg-convert | icat"

# FZF
alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS="--bind='f1:execute(code {})+abort'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Golang
# export PATH=$PATH:$(go env GOPATH)/bin
# export GOPATH=$(go env GOPATH)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Z
. /opt/homebrew/etc/profile.d/z.sh

# Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup=$("/Users/$USER/anaconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/$USER/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/$USER/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/$USER/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/Users/$USER/.local/bin:$PATH
export PATH=/usr/local/bin/git-fuzzy/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/Documents/dotfiles/.p10k.zsh.
[[ ! -f ~/Documents/dotfiles/.p10k.zsh ]] || source ~/Documents/dotfiles/.p10k.zsh

# Android platform tools
export PATH=$PATH:/Users/$USER/Library/Android/sdk/platform-tools


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/$USER/.sdkman"
[[ -s "/Users/$USER/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$USER/.sdkman/bin/sdkman-init.sh"


