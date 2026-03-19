# steps to replicate dotfiles situation:

1. eval "$(ssh-agent -s)"
1. open or `touch ~/.ssh/config`
1. add identity file and ssh key [from this setup thing.](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) // passphrase overkill. every push & pull enter a password? Nah fam.
1. download and install node // node allows you to install via n these days
<!-- 1. `sudo chown myusername` the `/usr/local/*` folders -->
<!-- you only need to do this if installing n at root. Seems unnecessary -->
6. npm i -g n zx np npm-check git-open lolcatjs
7. clone this repo, and update readme with changes, then override existing things in ~

<!-- maybe we'll stop using these -->
1. `sudo gem install lolcommits`
1. `git config --global init.templatedir '~/.git_template'`
