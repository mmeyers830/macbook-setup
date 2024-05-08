# MacOS Setup
All the installs are in the [setup.sh](./setup.sh) file.
Simply download the file and run it

```
sh ./setup.sh
```

You will probably need to input password, will need to figure out if there's a way around that.

After running the script, there are a few small manual things to do as well outlined below.

## VSCode
Sign in through Github and import the settings

## Trackpad
Nobody wants to not be able to right click on the touch pad, so change that.
> System Preferences -> Trackpad -> Secondary Click -> Click in bottom right corner

## Alt-Tab
Change the preferences so that they only show windows from the active Space
> Preferences -> Controls -> Shortcut 1 (and 2) -> Change `All Spaces` to `Visible Spaces` -> Change Minimized and Hidden to `Show at the end`

## Iterm

### Add Custom Profile
Download [iterm.json](./iterm.json)

> Settings -> Profiles -> Other Actions -> Import JSON Profiles -> iterm.json

Delete the default profile.

### Scroll on Less
> Settings -> Advanced -> Scroll wheel sends arrow keys when in alternate screen mode -> Yes
