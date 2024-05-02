## Basic Usage

Most of the time, you'll use *sed* in the middle of a pipeline to perform a substitution. This is done with the *s* command, which takes a [[regular_expressions]] to look for, replacement text with which to replace matched text, and optional flags:

```sh
sed 's/:.*//*' /etc/passwd|sort -u
```
Remove everything after the first colon Sort list and remove duplicates. 

```
SED

*Usage*
	sed [ -n ] 'editing command' [ files ... 
	sed [ -n ] -e 'editing command' ... [ files ... ]
	sed [ -n ] -f script-file ... [ files ... ]

*Purpose*
	To edit its input stream, producing results on standard output, instread of modifying files in place the way an interactive editor does. Althought sed has many commands and can do complicated things, it is most often used for performing text substitutions on an input stream, usualyy as part of a pipeline.

*Major option*
	-e 'editing command'
		Use editing command on the input data. -e must be used when there are multiple commands.

	-f script-file
		Read editing commands from script-file. This is useful when there are many commands to execute

	-n 
		Suppress the normal printing of each final modified line. Instead, lines must be printes explicitly with the p command.

*Behavior*
	This reads each line of each input file, or standard input if no files. For each line, sed executes every editing command that applies to the iinput line. The result is written on standard output. With no -e or -f options, sed treats the first argument as the editing command to use.

```

#bash_command
