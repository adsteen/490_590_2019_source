---
title: 'Lecture 2: R, RStudio, and Bash'
author: ~
date: '2019-08-25'
slug: lecture-2-r-rstudio-and-bash
categories: []
tags: []
---


# RStudio, R, and directories

* Rstudio vs R
* Other ways to run R
* interactively within command line: "R"
* `Rscript` from the command line: more on this later


# From Software Carpentry

Very brief intro to some key things you can do with the shell.
Note that these are condensed from the [Software Carpentry shell lesson](http://swcarpentry.github.io/shell-novice/reference/)

* `pwd` (note windows vs OSX/Linux)
    - note `/` means two different things; and in Windows it's `\`
    - Note `~` vs `/`
* `cd` 
    - `.`, `..`
* `ls`
    - `-` usually indicates 'arguments' (information you send to a program; aka 'flags' or 'switches')
* `man` (eg, `man ls`)
    - also, `ls --help`
* `cp old new` copies a file named 'old' to a file named 'new'
* `mkdir`
* `mv` (moving or renames)
* `rm`, `rm -r`: **beware**
* `*` matches zero or more characters in a filename
    - Notes on file extensions
* `nano` (and make a file to show about extensions)
* `head` and `tail`
* `wc`
* pipes: `ls -1 | wc -lq`
* This really gets useful when we start using loops, but I won't cover that
* `ssh`, `sftp`

(You can see more Software Carpentry lessons, including lessons on R and python, [here](https://software-carpentry.org/lessons/) - they're really carefully built!)

* What the shell is
    * A system to talk to your computer that doesn't require a graphical interface
	* We're using Bash: Bourne-again shell. 
	* Apparently OSX is switching to Zsh with their newest OS (Catalina), but this shouldn't really make a difference
* Why use it?
	* Unambiguous commands
	* Lots of software that only works via shell commands (e.g. sed, awk, pandoc, many niche scientific programs)
	* Working on a remote computer
	* **Shell scripts**

# Running R scripts from the command line

* Why?
	* Working on a supercomputer or other remote server
	* Including R scripts in a shell script
	* Note: try typing "R" in shell
* Rscript foo.R
* Make sure Rscript is in your [path](https://astrobiomike.github.io/bash/modifying_your_path)
	* try `echo $PATH | tr ":" "\n"`
* Note: maybe easiest to use Terminal window in Rstudio (although TBH I don't know whether there are system-specific quirks)

