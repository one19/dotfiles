# steps to replicate dotfiles situation:

1. eval "$(ssh-agent -s)"
1. open or `touch ~/.ssh/config`
1. add identity file and ssh key [from this setup thing.](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. download and install node
1. `sudo chown myusername` the `/usr/local/*` folders
6. npm i -g n zx np npm-check git-open lolcatjs
7. clone this repo into your ~ location
8. rm -rf .git
1. [install prezto](https://github.com/sorin-ionescu/prezto)
1. [install powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
1. grab them fonts [firacode](https://github.com/romkatv/powerlevel10k#installation) and [meslolgs](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

1. `sudo gem install lolcommits`
1. `git config --global init.templatedir '~/.git_template'`
