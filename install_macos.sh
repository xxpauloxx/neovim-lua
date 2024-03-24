#!/bin/sh

brew install neovim
brew install curl
brew install ag
brew install ctags
brew install tmate
brew install typescript-language-server
brew install jdtls
brew install rust
brew install rust-analyzer
brew install rg
brew install dockerfile-language-server

pip install pyright black flake8 jedi-language-server

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

