# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 📷 Screenshot

![neovim tmux dracula typescript](https://i.imgur.com/gKYcr5s.png)

## 🛠️ Installation

### Requirements

- Everything listed in [AstroNvim's documentation](https://github.com/AstroNvim/AstroNvim)
- Some globally installed npm packages for LSPs : `typescript-language-server`, `graphql-language-service-server`, `graphql-language-service-cli`, `@prisma/language-server`

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/Exilz/astronvim_config ~/.config/nvim/lua/user
```

#### Start Neovim

```shell
nvim
```
