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
