1.- when the shell runs a program, it ask to unix to start a new proccess, the shell know how to do this for compiled programs, if you don´t tell the route then unix will not know how to execute that program.

2.- its a way to tell unix which kind of program are you executing, not only bash script, you can execute python for example.

3.- the way to indicate that is with this two characters #!

4.- when the two first characters of the line are #! kernel will scan the rest of the line searching for a pathnamewhich will get to an interpreter.

5.- the kernel is searching for single option to be passed to the interpreter as well.

6.- For example assume a csh script named /usr/ucb/whizprog, the first line will be:
	#!/usr/ucb/whizprog -f


# shell script ususally start with #! /bin/sh. Use the path to a POSIX-compliant shell if your /bin/sh isn´t a POSIX compliant. 
	- Try to keep the firat line under 64 characters to don´t get errors
	- don't put any whitespace after option, it will understand it as part of the code
	- you have to know the full pathname of the interpreter.
	- some old kernel don´t use #! and might be picky about whitespaces...

(-) option means that there is not more shell option, just security so prevent spoofing attacks

example [[nusers]]

#bash_introduction
