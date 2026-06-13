# About

Starting a new repo to document commands related to dev work.

---

# Usage

```bash
~/deploy.sh path/to/file.php
```

---

# Linux Commands

### Hush SSH Login
```bash
touch ~/.hushlogin
```

### Set Alias Permanently (Bash Shell)
```bash
echo $SHELL && echo "This command output tells you which shell the system is using. If it says /bin/bash then you're good to proceed."
echo "alias c='clear'" >> ~/.bash_aliases && echo "This command creates a shortcut for clear by typing the c key and pressing enter."
echo "alias shut='sudo shutdown now'" >> ~/.bash_aliases && echo "This command creates a shortcut for sudo shutdown now by using typing shut instead and pressing enter."
source ~/.bashrc && echo "This command applies the changes above to be permanent."
```

### Set Alias Permanently (Z Shell)
```bash
echo $SHELL && echo "This command output tells you which shell the system is using. If it says /usr/bin/zsh then you're good to proceed."
echo "alias c='clear'" >> ~/.zshrc && echo "This command creates a shortcut for clear by typing the c key and pressing enter."
echo "alias shut='sudo shutdown now'" >> ~/.zshrc && echo "This command creates a shortcut for sudo shutdown now by using typing shut instead and pressing enter."
source ~/.zshrc && echo "This command applies the changes above to be permanent."
```
