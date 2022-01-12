#!/bin/bash -ex

# 2. brew install
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 3. brew cask install
# export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Install brew packages"

#brew tap caskroom/cask
#brew tap caskroom/versions
#brew tap homebrew/binary
#brew tap josegonzalez/homebrew-php
#brew install brew-cask
brew install lua
brew install vim
brew install tmux
brew install gcc
brew install wget
brew install mysql
brew install nginx
#brew install mongodb
brew install zsh
brew install ant
brew install qt
brew install openssl
brew install sqlite
#brew install packer
brew install jsonpp
brew install jq
#brew install postgresql
#brew install phantomjs
#brew install memcached
#brew install redis
brew install nkf
#brew install jenkins
#brew install packer
brew install anyenv
# brew install rbenv-gemset
# brew install rbenv-gem-rehash
brew install gradle
brew install sbt
brew install ansible
brew install git
#brew install dsnmasq
# brew install pyenv
# brew install pyenv-virtualenv
# brew install phpenv
# brew install --with-fpm --with-mysql php56
#brew install composer
#brew install maven
#brew install nodebrew
# brew install mecab
# brew install mecab-ipadic
# brew install mecab-unidic
# brew install kakasi
# brew install cabocha
#brew install android-platform-tools
#brew install android-sdk
#brew install android-ndk
brew install --cask iterm2
#brew install --cask java
# brew install --cask eclipse-ide
brew install --cask virtualbox
#brew install --cask firefox-developer-edition
brew install --cask vagrant
brew install --cask sequel-pro
brew install --cask dropbox
brew install --cask evernote
brew install --cask skype
brew install --cask google-chrome
# brew install --cask atom
# brew install --cask mou
# brew install --cask macvim --with-cscope --with-lua --HEAD
# brew install --cask textwrangler
#brew install --cask google-japanease-ime
# brew install --cask libreoffice
brew install --cask clipy
brew install --cask slack
# brew install --cask android-studio
brew install --cask visual-studio-code
brew install --cask macdown
brew install --cask coteditor
brew install --cask postman
brew install --cask unity
brew install --cask unity-hub
brew install --cask figma
brew install --cask appcleaner
brew install --cask asana
brew install --cask gimp
brew install --cask karabiner-elements
brew install --cask microsoft-office
brew install --cask messenger
brew install --cask discord
#brew install --cask awscli

echo "LaunchAgent settings"

if [ ! -d $HOME/Library/LaunchAgents ]; then
  mkdir -p $HOME/Library/LaunchAgents
fi

# 5. nginx setup
# ln -sfv /usr/local/opt/nginx/*.nginx.plist $HOME/Library/LaunchAgents/
# mv /usr/local/etc/nginx.conf /usr/local/etc/nginx.conf.bak
# ln -sfv ./config/nginx/nginx.conf /usr/local/etc/nginx.conf
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.nginx.plist
# launchctl start homebrew.mxcl.nginx

# 6. mysql setup
# ln -sfv /usr/local/opt/mysql/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mysql.plist
# /usr/local/bin/mysql -u root < ./config/mysql/bbs.sql
# /usr/local/bin/mysql -u root < ./config/mysql/blogdb.sql

# 7. postgreql setup
# ln -sfv /usr/local/opt/postgresq/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# 8. mongodb setup
# ln -sfv /usr/local/opt/mongodb/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
# /usr/local/bin/mongorestore ./config/mongodb/dump

# 9. redis setup
# ln -sfv /usr/local/opt/redis/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist
# launchctl start homebrew.mxcl.redis

# 10. memcached setup
# ln -sfv /usr/local/opt/memcached/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.memcached.plist
# launchctl start homebrew.mxcl.memcached

# 11. jenkins setup
# ln -sfv /usr/local/opt/jenkins/*.plist $HOME/Library/LaunchAgents/
# launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.jenkins.plist
# launchctl start homebrew.mxcl.jenkins

# 12. php-fpm
#ln -sfv /usr/local/opt/php56/*.plist $HOME/Library/LaunchAgents/
#launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.jenkins.plist

