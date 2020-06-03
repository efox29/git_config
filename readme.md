# Introduction
This is a shared gitconfig file to be used on different machines. This document describes how to use this on different projects.
## Use
In your gitconfig file you need to add the following

To use the commit template add the following
```
	[commit]
		template = ~/git_config/.gitmessage
```

To use the aliases, add the following
```
	[include]
		path = ~/git_config/.gitaliases
```


## Linux
Clone or download this repository to your location machine. Select a location that makes sense. For an example, create a folder in ~/ called ```git_config``` and put the contents of this in there.
```
	mkdir ~/git_config
```

Execute the command 
```
	ln -s ~/git_config/.gitconfig ~/.gitconfig 
```

Test out the config by running one of the known commands such as 
git ec.


## Windows
Todo

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

Then follow the readme contained within the diff-so-fancy repository to configure.