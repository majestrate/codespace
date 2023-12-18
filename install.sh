#!/bin/bash

# clone asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
echo >> ~/.bashrc
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc

# add plugins
for plug in $(cat .tool-versions | cut -d' ' -f1); do
  asdf plugin add $plug
done

# install all plugins

asdf install
