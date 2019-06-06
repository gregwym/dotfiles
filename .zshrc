# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mytheme"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github sudo brew node npm bower pip pod sublime textmate torrent)

source $ZSH/oh-my-zsh.sh

# Config history
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Autojump init
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn
# export PATH="$(yarn global bin):$PATH"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Aliases
alias pyclean="find . -name '*.pyc' -delete"
alias ztest="python manage.py test --settings=yourpeople.test_local_settings --reusedb"
alias ztestdb="python manage.py createtestdb -y --settings=yourpeople.test_local_settings && zendb restart && python manage.py migrateall --settings=yourpeople.test_local_settings -s"
alias zbuild='./ci/bin/trigger-build.py'
alias zbuild_all='./ci/bin/trigger-build.py -F'
alias resolve='code $(git diff --name-only | uniq)'
alias zpip=$'env LDFLAGS="-L$(brew --prefix openssl)/lib" CFLAGS="-I$(brew --prefix openssl)/include" SWIG_FEATURES="-cpperraswarn -includeall -I$(brew --prefix openssl)/include" pip install -r requirements.txt'
alias eb='rm -rf tmp dist && yarn install && bower install && ember build'
alias ebw='rm -rf tmp dist && yarn install && bower install && ember build -w'
alias gbclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias zendb='/Users/gregwang/Documents/Repos/zendb/zendb7'

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
