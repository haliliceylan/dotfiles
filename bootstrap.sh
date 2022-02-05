#!/usr/bin/env bash

cd ~/dotfiles;

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".vscodee" \
		--exclude ".devcontainer" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
}
apk add --no-cache zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
doIt;
unset doIt;
zsh