# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# SOURCE NPM TOKENS IF THEY EXIST
[ -f ~/.npm_tokens ] && source ~/.npm_tokens

# Source Prezto if it exists
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  setopt clobber;
  # (cd ~/.zprezto && git fetch && git stash && git rebase origin/master && git submodule update --init --recursive && cat ~/.zshrcbackup > ~/.zshrc)
fi


# STARTUP COMMANDS
eval "$(rbenv init -)"
brew update
echo "----------Be happy.----------" | lolcatjs


# ALIASES
## LOLCOMMITS COMMITMENT TO EXCELLENCE
alias docked='export CAMERA="C922 Pro Stream Webcam" && export LOLCOMMITS_DEVICE=$CAMERA'
alias mobile='export CAMERA="FaceTime HD Camera (Built-in)" && export LOLCOMMITS_DEVICE=$CAMERA'

## NPM TOKEN EXPORTS
# alias mynpm="export NPM_TOKEN=$MY_TOKEN NPM_ORG=$MY_ORG"
# alias worknpm="export NPM_TOKEN=$WORK_TOKEN NPM_ORG=$WORK_ORG"
# alias solenpm="export NPM_TOKEN=$MY_TOKEN NPM_ORG=$SOLE_ORG"


## EDITORS
alias subl='open -a "Sublime Text"'
alias visc='open -a "Visual Studio Code"'
alias atom='open -a "Atom"'

## CUSTOM GIT COMMANDS
alias grom='git rebase origin/main'
alias greom='git reset --hard origin/main'
alias grunt='gf && git checkout development && git reset --hard origin/development'
alias wip='git add . && git commit -m wip --no-verify'

## FUN
alias cow='fortune | cowsay | lolcatjs'
alias dragon='fortune | cowsay -f dragon | lolcatjs'

## PLANNING
alias today='today -c'
alias tomorrow='today -cn'

## WORK GCLOUD
# alias gtest='gcloud container clusters get-credentials shortlyster-test --zone australia-southeast1-c --project shortlyster-test'
# alias gprod='gcloud container clusters get-credentials shortlyster-production --zone australia-southeast1-c --project shortlyster-test'


# PATH MODIFICATION
export PATH=/usr/local/lib:$PATH
export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export GOROOT="/usr/local/go"
export PATH=$PATH:$GOROOT/bin
export GOPATH="/Users/one19/Fundamentals/go"

# PLEASE MAKE IT STOP AAA
export ADBBLOCK=true
export NPM_CONFIG_FUND=false
export DISABLE_OPENCOLLECTIVE=true
export RUBYOPT='-W:no-deprecated'

# FINAL SETUP
eval "$(pyenv init -)"
# eval mynpm
eval mobile

cow

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
