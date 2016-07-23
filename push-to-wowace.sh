#!/bin/bash
openssl aes-256-cbc -K $encrypted_bfcd8b8ecc98_key -iv $encrypted_bfcd8b8ecc98_iv -in wowace.key.enc -out wowace.key -d
set -x
env
which git
which ssh
git push git@git.wowace.com:wow/libplayerspells-1-0/mainline.git $TRAVIS_BRANCH $TRAVIS_TAG
