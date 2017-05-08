# My prefered dotfiles for docker containers

## .bashrc

Contains my favorite alias "ducks". Not very useful for containers, but "never leave home without it".
Also sets up PS1 depending on container os:
SUSE-derivates gets a nice green color with the name of the os + the version while at the moment everything else gets red colors with os-name and version.
Tested for Debian, others might look very bad.
My reasoning behind this is that I frequently have different containers running, not necessarily always the same os which means that i sometimes forget what container runs what.
By "color-coding" my prompts I don't have to wonder whether this container needs apt-get, zypper, apk or yum. More colors will follow.

## .vimrc

Contains my most used vim settings.

## HOWTO

My prefered way of putting this in my containers is by adding a folder in the docker context with the name of `dotfiles`, add the files then in the Dockerfile do `ADD ./dotfiles $HOME` or root or wherever you may want to put these.

