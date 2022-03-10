# MacOS Setup
## Homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”`

## Chrome 
`brew install --cask google-chrome`

## Logi Options
[Download](https://www.logitech.com/en-us/software/options.html)

## ITerm
`brew install --cask iterm2`
### oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
### Themes
Follow instructions [here](https://towardsdatascience.com/the-ultimate-guide-to-your-terminal-makeover-e11f9b87ac99#4b05) to do Starship

Be sure to install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)

`brew install zsh-syntax-highlighting`

Update the starship config at `~/.config/starship.toml`
```
format = """
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
disabled = true
```

### Keys Preferences
To be able to do things like alt+left to skip words and such, you need to update the key bindings. This is done by going to

> Preferences -> Profiles -> Keys -> Load Preset -> Natural Text Editing

### Keep History
To preserve the full history:
> Preferences -> Profiles -> Terminal -> Unlimited scrollback

## Rectangle
`brew install rectangle`

## VS Code
`brew install --cask visual-studio-code`

Install packages:
* Typescript
  * ms-vscode.vscode-typescript-next
  * msjsdiag.vscode-react-native
  * eg2.vscode-npm-script
  * Prisma.prisma
* Python
  * ms-python.python
  * ms-toolsai.jupyter
* Misc
  * esbenp.prettier-vscode
  * vscode-icons-team.vscode-icons
  * ms-vscode-remote.remote-ssh
  * amazonwebservices.aws-toolkit-vscode
  * ms-azuretools.vscode-docker
  * eamodio.gitlens
  * JuanBlanco.solidity

### VS Code Terminal
#### Font
To allow Starship to be displayed right, change the font to the font you installed when you installed Starship. Open `settings.json` by cmd+shift+p -> Preferences: Open Settings (JSON). Add this:

`"terminal.integrated.fontFamily": "Hack Nerd Font Mono"`

## NVM
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

[Auto calling NVM on dir change](https://github.com/nvm-sh/nvm#zsh)

## Postman
`brew install --cask postman`

## Slack
`brew install --cask slack`

## Typescript
`npm install -g typescript`

## AWS CLI
`brew install awscli`

## Docker
`brew install --cask docker`
