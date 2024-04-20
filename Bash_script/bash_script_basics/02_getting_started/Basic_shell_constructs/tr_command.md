```
TR

*Usage*
	tr [options] source-char-list replace-char-list

*Purpose*
	To transliterate characters. For example, converting uppercase characters to lowercase. Option let you remove characters and compress runs of indentical characcters.

*Major option*
	-c 
		Complement the values in *source-char-list*. The characters that tr translate then became those that are not in *source-char-list*. This option is ususally used with one of -d or -s.
	
	-C 
		Like -c nut work on (possibly multibyte) characters, not binary byte characters
	
	-d 
		Delete characters in *source-char-list* from the input instead of transliterating them.
	
	-s 
		"Squeeze out" duplicate characters. Each sequence of repetead characters listed in *source-char-list* is replaced with a single instance of that character.


*Behavior*
	Acts as a filter, reading characters from standard input and written then to standard output

*Ceveats*
	According to POSIX, the -c option operates on the binary byte values. some system don't support -C option.
```
#bash_command
[[Basic_shell_constructs]]
