# Configuração do Neovim com Lua

Este repositório contém a configuração do Neovim utilizando a linguagem de programação Lua. Abaixo estão as instruções para instalação e configuração dos requisitos necessários.

## Requisitos

Certifique-se de instalar as seguintes ferramentas e gerenciadores de versões:

- [gvm](https://github.com/moovweb/gvm) - Gerenciador de versões do Go.
- [pyenv-installer](https://github.com/pyenv/pyenv-installer) - Instalador para o gerenciador de versões do Python.
- [nvm](https://github.com/nvm-sh/nvm) - Gerenciador de versões do Node.js.

Além disso, instale os seguintes pacotes e ferramentas:

```bash
# Ferramentas essenciais
brew install ag       # The Silver Searcher, para busca de arquivos
brew install ctags    # Gerador de tags para navegação no código
brew install tmate    # Ferramenta para compartilhamento de sessões do terminal

# Pacotes Python
pip install pyright black flake8 jedi-language-server

# Ferramentas Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Instalação de Plugins

- Para instalar o plugin **vim-doge**, execute o seguinte comando dentro do Neovim:
  ```vim
  :call doge#install()
  ```

## Fonte Recomendada

Para uma melhor experiência visual, utilize a fonte [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads) com as seguintes configurações:

- Tamanho: 17
- Peso: SemiBold

---

Com essas configurações, você terá um ambiente de desenvolvimento poderoso e otimizado para o Neovim.