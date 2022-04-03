# Setup SSH

## Create ssh key by following the steps:

Run in terminal app

```
ssh-keygen -t ed25519 -C "<your email>"
```

- Press Return when asked **"Enter file in which to save the key"**
- Press Return when asked **"Enter passphrase"** and **"Enter same passphrase again"**

By default both private and public keys will be located in your `$HOME/.ssh` directory.

Run: `pbcopy < ls ~/.ssh/id_ed25519.pub` which copies the file into your clipboard .
