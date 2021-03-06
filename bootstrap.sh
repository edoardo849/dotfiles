#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" \
		--exclude "README.md" --exclude "Makefile" -avh --no-perms . ~;
	source ~/.bash_profile;
}

doIt;
unset doIt;
