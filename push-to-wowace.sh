#!/bin/bash
set -x
cd $TRAVIS_BUILD_DIR
which git
which ssh
git push git@git.wowace.com:wow/libplayerspells-1-0/mainline.git $TRAVIS_BRANCH $TRAVIS_TAG
