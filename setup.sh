#/usr/bin/bash
# 1. Xcode command line tool install
xcode-select -install

# 2. brew install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 3. brew cask install
export HOMEBREW_CASK_OPTS="-appdir=/Applications"

# 4. brew install
./brew.sh

# 5. nginx setup
ln -sfv /usr/local/opt/nginx/*.nginx.plist $HOME/Library/LaunchAgents/
mv /usr/local/etc/nginx.conf /usr/local/etc/nginx.conf.bak
ln -sfv ./config/nginx/nginx.conf /usr/local/etc/nginx.conf
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.nginx.plist
launchctl start homebrew.mxcl.nginx

# 6. mysql setup
ln -sfv /usr/local/opt/mysql/*.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.mysql.plist
/usr/local/bin/mysql -u root < ./config/mysql/bbs.sql
/usr/local/bin/mysql -u root < ./config/mysql/blogdb.sql

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
# 13. bashrc / bash_profile zshenv / zshrc
cp ./config/.bashrc ~/
cp ./config/.bash_profile ~/
cp ./config/.zshrc ~/
cp ./config/.zshenv ~/
# 14. setting direcotry
mkdir ~/workspace
mkdir ~/vbox
mkdir -p ~/tool/repo
mkdir -p ~/workspace/ruby
mkdir -p ~/workspace/java
mkdir -p ~/workspace/php
mkdir -p ~/workspace/python
mkdir -p ~/workspace/javascript
mkdir -p ~/workspace/cpp
mkdir -p ~/workspace/scala
mkdir -p ~/workspace/cocos
mkdir -p ~/workspace/unity
mkdir -p ~/workspace/android
mkdir -p ~/workspace/ios
if [ -d ~/.ssh ]; then
  mv ~/.ssh ~/.ssh_bak
  mkdir ~/.ssh
else;
  mkdir ~/.ssh
fi
# 15. ssh setting
cp ./config/ssh/* ~/.ssh/
# 16. git setting
cp ./config/git/.gitconfig ~/
# 17. vim setting
git clone git@github.com:tatsu07/vim-setting.git ~/tool/repo/
ln -sfv ~/tool/repo/vim-setting/.vimrc ~/
ln -sfv ~/tool/repo/vim-setting/.vim ~/
