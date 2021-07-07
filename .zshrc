# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# SOURCE NPM TOKENS IF THEY EXIST
# [ -f ~/.npm_tokens ] && source ~/.npm_tokens

# Source Prezto if it exists
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  source ~/powerlevel10k/powerlevel10k.zsh-theme
  setopt clobber;
  # (cd ~/.zprezto && git fetch && git stash && git rebase origin/master && git submodule update --init --recursive && cat ~/.zshrcbackup > ~/.zshrc)
fi


# STARTUP COMMANDS
# eval "$(rbenv init -)"
command -v brew && brew update
echo "----------Be happy.----------" | lolcatjs


## EDITORS
alias subl='open -a "Sublime Text"'
alias visc='open -a "Visual Studio Code"'
alias atom='open -a "Atom"'

## CUSTOM GIT COMMANDS
source ./.git-aliases.sh

## FUN
alias cow='fortune | cowsay | lolcatjs'
alias dragon='fortune | cowsay -f dragon | lolcatjs'

## PLANNING
alias today='today -c'
alias tomorrow='today -cn'


# # PATH MODIFICATION
export PATH="$PATH:$HOME"
# export PATH="$HOME/.yarn/bin:$PATH"
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# # UNBLOCK ON MAC TO DEVELOP IN GO
# export GOROOT="/usr/local/go"
# export PATH="$PATH:$GOROOT/bin"
# export GOPATH="/Users/one19/Fundamentals/go"

# # PLEASE MAKE IT STOP AAA
export ADBBLOCK=true
export NPM_CONFIG_FUND=false
export DISABLE_OPENCOLLECTIVE=true
export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
# export RUBYOPT='-W:no-deprecated'

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'history-substring-search' \
  'prompt'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
autoload -Uz promptinit
promptinit
prompt powerlevel10k > /dev/null 2>&1
