# NEVER REMOVE. START THE SSH AGENT SO OUR KEYS ARE HOT GRABBABLE
if [ -z "$SSH_AGENT_PID" ]; then
    eval "$(ssh-agent -s)" > /dev/null 2>&1
fi

# brew install cowsay fortune thefuck zsh-autosuggestions zsh-syntax-highlighting
# npm i -g lolcatjs

# # PATH MODIFICATION
export PATH="$PATH:$HOME"
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"

# STARTUP COMMANDS
echo "checking brew updates"
brew outdated --quiet || {
  echo "brew updating"
  brew update
}
echo "----------Be happy.----------" | lolcatjs

## EDITORS
alias visc='open -a "Visual Studio Code"'

## FUN
alias dragon='fortune | cowsay -f dragon | lolcatjs'
alias cow='fortune | cowsay | lolcatjs'
alias fuck='thefuck'

# # PLEASE MAKE IT STOP AAA
export ADBBLOCK=true
export NPM_CONFIG_FUND=false
export DISABLE_OPENCOLLECTIVE=true

### OH-MY-ZSH SHIT (yes, we went back)
ZSH_THEME="agnoster"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13
plugins=(git history jsontools web-search)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
prompt_context() {
	prompt_segment "$AGNOSTER_CONTEXT_BG" "$AGNOSTER_CONTEXT_FG" "%(!.%{%F{$AGNOSTER_STATUS_ROOT_FG}%}.)%n"
}


## CUSTOM GIT COMMANDS
# sourced last to obliterate shitty oh-my-zsh git aliases
source ~/.git-aliases.sh
