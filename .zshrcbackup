#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# SOURCE NPM TOKENS IF THEY EXIST
[ -f ~/.npm_tokens ] && source ~/.npm_tokens

# Source Prezto if it exists
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  (cd ~/.zprezto && git fetch && git add . && git stash && git rebase origin/master && git submodule update --init --recursive && git stash apply)
fi


# STARTUP COMMANDS
eval "$(rbenv init -)"
brew update
echo "----------Be happy.----------" | lolcat


# ALIASES
## LOLCOMMITS COMMITMENT TO EXCELLENCE
alias docked='export CAMERA="C922 Pro Stream Webcam"'
alias mobile='export CAMERA="FaceTime HD Camera (Built-in)"'

## NPM TOKEN EXPORTS
alias mynpm="export NPM_TOKEN=$MY_TOKEN NPM_ORG=$MY_ORG"
alias worknpm="export NPM_TOKEN=$WORK_TOKEN NPM_ORG=$WORK_ORG"
alias solenpm="export NPM_TOKEN=$MY_TOKEN NPM_ORG=$SOLE_ORG"

## KUBES STUFF
alias prcount='echo "`kubectl get namespaces | wc -l` - 4" | bc'

## EDITORS
alias subl='open -a "Sublime Text"'
alias visc='open -a "Visual Studio Code"'
alias atom='open -a "Atom"'

## CUSTOM GIT COMMANDS
alias grom='git rebase origin/master'
alias greom='git reset --hard origin/master'
alias wip='git add . && git commit -m wip --no-verify'

## FUN
alias cow='fortune | cowsay | lolcat'
alias dragon='fortune | cowsay -f dragon | lolcat'

## PLANNING
alias today='today -c'
alias tomorrow='today -cn'

## WORK GCLOUD
alias gtest='gcloud container clusters get-credentials shortlyster-test --zone australia-southeast1-c --project shortlyster-test'
alias gprod='gcloud container clusters get-credentials shortlyster-production --zone australia-southeast1-c --project shortlyster-test'


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

# FINAL SETUP
eval "$(pyenv init -)"
eval mynpm
eval mobile
