
# VARIOUS
alias gs="git status"

alias gd="git diff"
alias gdc="git diff --cached"

alias gl="git lg"

alias gpos="git pull origin staging"

alias gf="git fetch"

alias gb="git branch"

alias gp="git push"
alias gpuo="git push -u origin"

alias gc="git clone"

# ADD
alias ga="git add ."
alias gm="git commit -m"
alias gam="git add . && git commit -m"
alias gwip='git add . && git commit -m wip --no-verify'

# CHECKOUT
alias gco="git checkout"
alias gcom="git checkout origin/main 2>/dev/null || git checkout origin/master"
alias gcos="git checkout staging"
alias gcoc="git checkout canary"
alias gcod="git checkout dev"
alias gcob="git checkout -b"

# REBASE
alias gr="git rebase"
alias grm="git rebase origin/main 2>/dev/null || git rebase origin/master"
alias grc="git rebase --continue"
alias grs="git rebase --skip"

# MY OWN BS
alias gcp="git cherry-pick"

alias greom='git reset --hard origin/main 2>/dev/null || git reset --hard origin/master'

alias grunt='gf && git checkout development && git reset --hard origin/development'
