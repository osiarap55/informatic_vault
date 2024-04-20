## Commands and Arguments

The shell most basic job is simply to execute Commands, you type commands one at time, and the shell execute them:

```sh
➜  ~  cd Documentos ; ls -l Topicos
total 32
drwxrwxr-x  2 paradiseland86 paradiseland86 4096 Jan 18 19:27 ARTE
drwxrwxr-x  3 paradiseland86 paradiseland86 4096 Jan  8 11:59 ECONOMIA
drwxrwxr-x  2 paradiseland86 paradiseland86 4096 Oct 25 12:23 FILOSOFIA
drwxrwxr-x 13 paradiseland86 paradiseland86 4096 Mar 21 12:43 INFORMATICA
drwxrwxr-x  3 paradiseland86 paradiseland86 4096 Jan  8 11:58 LENGUA
drwxrwxr-x  2 paradiseland86 paradiseland86 4096 Dec  1 14:00 Mapas_mentales
drwxr-xr-x 12 paradiseland86 paradiseland86 4096 Sep  5  2023 MATH
drwxrwxr-x  2 paradiseland86 paradiseland86 4096 Jan 22 11:57 MUSICA
```

### Shell Commands 

The shell recognizes three fundamenta kind of commands: built-in commands, sheel functions and external commands:

 * Built-in commands are just that: commands that the shell executes itself, such us *cd* or *read* to get input from the users, other commands are often built into the shell for efficiency

 * Shell functions are self-contained chunk of code, written in the shell languages that are invoked in the same way as command is.

 * External commands are the ones that the shell runs by creating a separe process. The basics steps are:

	* Create a new process. This process starts out as a copy of the shell.
	* In the new process, search the directories listed in the *PATH* varibale for the given command.
	* In the new process, execute the found program by replacing the running shell program with the new program.
	* When the program finishes, the original shell continues by reading the next command from the terminal, or by running the next command in the script.

[[Basic_shell_constructs]]
