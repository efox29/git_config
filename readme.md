# Introduction
This is a shared gitconfig file to be used on different machines. This document describes how to use this on different projects.
## Use
The easiest way is to create a smybolic link to gitconfig file. This works on both linux and windows systems (if using unix like terminal like git bash). 

**note** On windows 10, there is some weird behaviour and I cannot get symbolic links to work, so the following command just copies the gitconfig without actually creating a sym link.

`ln -s ~/git_config/.gitconfig ~/.gitconfig`

The email address is intentionally left out of the config so that you can use this for work and home, and you just have to specify which email address you are using.

You will have to also create the following file
`touch ~/.git_global_config`

Enter the following
```
[user]
	email = email@domain.com
```
## Optional 

To make the git diffs (not difftool) look better, use the following plugin called [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

The diff-so-fancy is a submodule of this repo and can be init with the
```
git submodule update --init
```
or 
```
git submodule update
```

Then follow the readme contained within the diff-so-fancy repository to configure. **Please** read the github page to see if its been updated or new configuration options: [diff-so-fancy Github](https://github.com/so-fancy/diff-so-fancy)

But as a recap, this is the default settings that need to be added to the `gitconfig` file in order for `diff-so-fancy` to work.

```
[core]
	pager = ~/git_config/diff-so-fancy/diff-so-fancy | less --tabs=4 -RFX
[color]
	ui = true
[color "diff-highlight"]
	oldNormal = red bold
	oldHighlight = red bold 52
	newNormal = green bold
	newHighlight = green 22
[color "diff"]
	meta = 11
	frag = magenta bold
	commit = yellow bold
	old = red bold
	new = green bold
	whitespace = red reverse
```
