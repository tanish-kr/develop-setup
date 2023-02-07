#!/bin/bash -ex

# 2. brew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install brew packages"
exec $SHELL -l

brew bundle

asdf plugin add ruby
asdf plugin add nodejs
asdf plugin add yarn
asdf plugin add python
asdf plugin add java
asdf plugin add golang

asdf install ruby latest
asdf install nodejs latest
asdf install yarn latest
asdf install python latest
asdf install java latest
asdf install golang latest

asdf global ruby latest
asdf global nodejs latest
asdf global yarn latest
asdf global python latest
asdf global java latest
asdf global golang latest

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# echo "LaunchAgent settings"

# if [ ! -d $HOME/Library/LaunchAgents ]; then
#   mkdir -p $HOME/Library/LaunchAgents
# fi

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

