#!/bin/bash -ex

echo "Generate directory"

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
mkdir -p ~/workspace/swift
mkdir -p ~/workspace/c
mkdir -p ~/workspace/elixir
mkdir -p ~/workspace/cSharp
mkdir -p ~/workspace/docker
mkdir -p ~/.go
mkdir -p ~/vbox
mkdir -p ~/tool

git clone git@github.com:tanish-kr/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./dotfiles.sh install
