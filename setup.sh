## Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

## Chrome 
brew install --cask google-chrome

## Logi Options+
brew install --cask logi-options-plus

## ITerm
brew install --cask iterm2

### oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#### Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install autojump

#### Update the plugins at `~/.zshrc`
sed -i -e 's/plugins=.*/plugins=(git brew autojump zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc


### Starship
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

#### Update the starship config at `~/.config/starship.toml`
echo 'format = """
$all\
$fill\
$time\
$line_break\
$character
"""

[time]
disabled = false
style = "bold bright-black"
format = "[$time]($style) "

[package]
disabled = true' > ~/.config/starship.toml

## Rectangle
brew install rectangle

## AltTab
brew install --cask alt-tab

## MAS (Mac App Store)
brew install mas

## VS Code
brew install --cask visual-studio-code

## NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
nvm install node

### auto switch node version based on .nvmrc
echo '
# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc' >> ~/.zshrc

## Postman
brew install --cask postman

## Slack
brew install --cask slack

## Amphetamine
mas install 937984704

## Typescript
npm install -g typescript

## AWS CLI
brew install awscli

## Docker
brew install --cask docker

## TablePlus
brew install --cask tableplus

## Terraform
brew install terraform
