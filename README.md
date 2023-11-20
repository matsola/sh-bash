# sh bash

Clone using and install using:

```sh
git clone https://github.com/matsola/sh-bash.git
sh sh-bash/install.sh
```

## How it works

When you run `install` copies will be made of existing .bash* files in your home directory, hence you can always fall back to previous version.

`.bash_profile` sources `.bashrc`.

`.bashrc` contains a couple of aliases and some functions to talk with maven.

Also, if it install bash-git-prompt enabling you to see the status of the git-repo you are standing in. On top of that it installs git-completion to enable tabs for switching branches and similar.

`.bash_local`

If you want to have custom aliases and exports for a particular machine, use this file - it is not overwritten when doing `install`.

