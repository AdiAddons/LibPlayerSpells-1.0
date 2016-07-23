#!/bin/bash

# Setup SSH
mkdir -p $HOME/.ssh
cat >$HOME/.ssh/known_hosts <<KEYS
git.wowace.com ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAx0NSV8f5wXfwlBTO5GqJ3XyojSjdbibkPL+wRqgIqE34umBBhNZ9aWgRiRmHcqg4zihsOWXJSg6Lt0CJSIB3Z/9pYkvWwTgzvGo4x5UyP39flxP/O36WTiwwfC3fRyP1ehoEA9m508Nbwqyc3UaIlkusdoFmzLWdQR2lMgpj38EEc0d0zIfFmXqVpNT+4LaQveXXtM5O3wWPd1CF16jzpBvT876cw9yhc+CAotyTTa2YqOgMvVijwtLBy9KsiG1t4Hp74PfjDcSYXjmZsF/Yj4NhwIUEY99kQfhld2a5VAPhJb5zRhbNB6YRy9YvpjClFiCPtra4WkBUdNao/y7I7Q==
git.wowace.com ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBGITEnmV6uhzmQdEgvpsJs8ZMEA5gqP1iIE/xEIqKnkZtoCPd6NONuOx4Q1zM+lijWTNCqV/ZajT02DW+9ECdBQ=
KEYS
openssl aes-256-cbc -K $encrypted_bfcd8b8ecc98_key -iv $encrypted_bfcd8b8ecc98_iv -in wowace.key.enc -out $HOME/.ssh/id_rsa -d
chmod -R og= $HOME/.ssh

# Do push
git push git@git.wowace.com:wow/libplayerspells-1-0/mainline.git $TRAVIS_BRANCH $TRAVIS_TAG
