# MacOS Setup
## Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Chrome 
```
brew install --cask google-chrome
```
## Logi Options
[Download](https://www.logitech.com/en-us/software/options.html)

## ITerm
```
brew install --cask iterm2
```
### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Plugins
First, clone a few plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install autojump
```
In your `.zshrc` file, find the plugins
```
plugins=(git brew autojump zsh-syntax-highlighting zsh-autosuggestions)
```

### Starship
Install starship and fonts
```
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
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

Change the color presets to [Snazzy](https://github.com/sindresorhus/iterm2-snazzy)
> Preferences -> Profiles -> Colors -> Color Presets -> Snazzy

Change the font to [Hack Nerd Font Mono](https://www.nerdfonts.com) (installed above)
> Preferences -> Profiles -> Text -> Font -> Hack Nerd Font Mono

### Keys Preferences
To be able to do things like alt+left to skip words and such, you need to update the key bindings. This is done by going to

> Preferences -> Profiles -> Keys -> Key Mappings -> Presets -> Natural Text Editing -> Remove

Also add a key mapping for CMD+t to Duplicate Tab

### Keep History
To preserve the full history:
> Preferences -> Profiles -> Terminal -> Unlimited scrollback

### Scroll on Less
> Settings -> Advanced -> Scroll wheel sends arrow keys when in alternate screen mode -> Yes

### Save Paging Output on Exit
When running git diff or similar commands that page, this will save the output to the history
> Preferences -> Profiles -> Terminal -> Disable save/restore alternate screen

## Rectangle
```
brew install rectangle
```

## MAS (Mac App Store)
```
brew install mas
```

## VS Code
```
brew install --cask visual-studio-code
```

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
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
nvm install node
```

[Auto calling NVM on dir change](https://github.com/nvm-sh/nvm#zsh)

## Postman
```
brew install --cask postman
```

## Slack
```
brew install --cask slack
```

## Amphetamine
```
mas install 937984704
```

## Typescript
```
npm install -g typescript
```

## AWS CLI
```
brew install awscli
```

## Docker
```
brew install --cask docker
```

## TablePlus
```
brew install --cask tableplus
```

## Trackpad
Nobody wants to not be able to right click on the touch pad, so change that.
> System Preferences -> Trackpad -> Secondary Click -> Click in bottom right corner
