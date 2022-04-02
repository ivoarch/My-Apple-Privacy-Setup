# Brew

### Enumerate packages installed

This will create a Brewfile in the current folder listing the apps installed

```
brew bundle dump
```

### Prevent Homebrew to spyware

```
export HOMEBREW_NO_ANALYTICS=1
```

### View current config

```
brew config
```

### Remove brew and all the packages

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```
