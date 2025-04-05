#!/bin/sh

brew install neovim
brew install curl
brew install fzf
brew install ag
brew install ctags
brew install tmate
brew install typescript-language-server
brew install jdtls
brew install rust
brew install rust-analyzer
brew install rg
brew install dockerfile-language-server
brew install ctags
brew install the_silver_searcher
brew install code-minimap
brew install prettier
brew install stylua

pip install pyright black flake8 jedi-language-server
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
go install github.com/ofabry/go-callvis@latest

