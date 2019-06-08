#!/bin/bash

# 2. brew install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 3. brew cask install
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Install brew packages"

brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/binary
brew tap josegonzalez/homebrew-php
brew install brew-cask
brew install lua
brew install vim --with-lua
brew install tmux
brew install gcc
brew install wget
brew install mysql
brew install nginx
brew install mongodb
brew install zsh
brew install ant
brew install qt
brew install openssl
brew install sqlite
brew install packer
brew install jsonpp
brew install jq
brew install postgresql
brew install phantomjs
brew install memcached
brew install redis
brew install nkf
brew install jenkins
brew install packer
brew install rbenv
brew install rbenv-gemset
brew install rbenv-gem-rehash
brew install gradle
brew install sbt
brew install ansible
brew install git
brew install dsnmasq
brew install pyenv
brew install pyenv-virtualenv
brew install phpenv
brew install --with-fpm --with-mysql php56
brew install composer
brew install maven
brew install nodebrew
brew install mecab
brew install mecab-ipadic
brew install mecab-unidic
brew install kakasi
brew install cabocha
brew install android-platform-tools
brew install android-sdk
brew install android-ndk
brew cask install iterm2
brew cask install java
brew cask install eclipse-ide
brew cask install virtualbox
brew cask install firefoxdeveloperedition-ja
brew cask install vagrant
brew cask install sequel-pro
brew cask install dropbox
brew cask install evernote
brew cask install skype
brew cask install google-chrome
brew cask install atom
brew cask install mou
brew cask install macvim --with-cscope --with-lua --HEAD
brew cask install textwrangler
brew cask install google-japanease-ime
brew cask install libreoffice
brew cask install clipmenu
brew cask install slack
brew cask install android-studio

echo "LaunchAgent settings"

if [ ! -d $HOME/Library/LaunchAgents ]; then
  mkdir -p $HOME/Library/LaunchAgents
fi

# 5. nginx setup
ln -sfv /usr/local/opt/nginx/*.nginx.plist $HOME/Library/LaunchAgents/
mv /usr/local/etc/nginx.conf /usr/local/etc/nginx.conf.bak
ln -sfv ./config/nginx/nginx.conf /usr/local/etc/nginx.conf
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.nginx.plist
launchctl start homebrew.mxcl.nginx

# 6. mysql setup
ln -sfv /usr/local/opt/mysql/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mysql.plist
# /usr/local/bin/mysql -u root < ./config/mysql/bbs.sql
# /usr/local/bin/mysql -u root < ./config/mysql/blogdb.sql

# 7. postgreql setup
ln -sfv /usr/local/opt/postgresq/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# 8. mongodb setup
ln -sfv /usr/local/opt/mongodb/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
/usr/local/bin/mongorestore ./config/mongodb/dump

# 9. redis setup
ln -sfv /usr/local/opt/redis/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist
launchctl start homebrew.mxcl.redis

# 10. memcached setup
ln -sfv /usr/local/opt/memcached/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.memcached.plist
launchctl start homebrew.mxcl.memcached

# 11. jenkins setup
ln -sfv /usr/local/opt/jenkins/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.jenkins.plist
launchctl start homebrew.mxcl.jenkins

# 12. php-fpm
#ln -sfv /usr/local/opt/php56/*.plist $HOME/Library/LaunchAgents/
#launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.jenkins.plist

