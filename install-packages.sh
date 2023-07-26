#!/usr/bin/env bash

while read p; do
 brew install $p
done <./packages/brew-formula # from brew list -1 --formula | sort > brew-formula

while read p; do
 brew install --cask $p
done <./packages/brew-casks # from brew list -1 --casks | sort > brew-casks

while read p; do
 sudo gem install  $p
done <./packages/gems
