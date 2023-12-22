#!/bin/bash

# clone asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
echo >> ~/.bashrc
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc

source ~/.asdf/asdf.sh

# add plugins
for plug in $(cat tool-versions | cut -d' ' -f1); do
  asdf plugin add $plug
done

cp tool-versions ~/.tool-versions

# install plugins
asdf install

# copy configs
cp tmux.conf ~/.tmux.conf
