#!/bin/bash
cd $(basenamme $0)

# Setup SSH
mkdir -p $HOME/.ssh
cp wowace.hostkeys $HOME/.ssh/known_hosts
openssl aes-256-cbc -K $encrypted_bfcd8b8ecc98_key -iv $encrypted_bfcd8b8ecc98_iv -in wowace.key.enc -out $HOME/.ssh/id_rsa -d
chmod -R og= $HOME/.ssh

# Do push
git push "git@git.wowace.com:wow/$1/mainline.git" --tags $TRAVIS_BRANCH
