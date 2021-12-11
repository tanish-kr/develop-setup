#!/bin/bash -ex

if [[ "$(uname -a)" =~ 'Darwin' ]]; then
  # 1. Xcode command line tool install
  xcode-select --install
  sudo xcodebuild -license accept
  # 2. brew install
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # 3. brew update
  brew update
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
  # 4. install ansible
  brew install ansible
  # 5. execute ansible playbook
  ansible-playbook -i localhost  -e os_name=mac -e user=$USER develop-setup-playbook.yml
elif [[ "$(uname -a)" =~ 'ubuntu' ]]; then
  sudo apt -y update
  apt install -y ansible
elif [[ "$(uname -a)" =~ 'centos' ]]; then
  sudo yum -y update
  yum install -y ansible
elif [[ "$(uname -a)" =~ 'Microsoft' ]]; then
  # Windows for Ubuntu上でインストールする
  sudo apt -y update
  sudo apt install -y ansible

  ansible-playbook -i localhost  -e os_name=windows -e user=$USER develop-setup-playbook.yml
fi
