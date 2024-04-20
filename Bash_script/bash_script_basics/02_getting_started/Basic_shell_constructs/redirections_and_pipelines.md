The shell provides several syntatic notations for specifyng how to change the default I/O sources and destinations.

We cover the basics ones here:

 * Change standard input with <
	Use *program < file* to make program's standard input be *file*:

```sh
➜  ~  tr -d '\r' < dos-file.txt
```

 * Change standard output with > 
	Use *program > file* to make program's standard output be *file*:

```sh
➜  ~  tr -d '\r' < dos-file.txt > unix-file.txt
```

 * Append to a file with >>
	Use *program >> file to send program's standart output to end of the file*

```sh
for f in dos-file*.txt
do
	tr -d ' $f ' >> big-unix-file.txt
done
```

 * Create pipelines with |
	Use *program1|program2* to make the standar output of the first program the input of the second program	

```sh
tr -d '\r' < dos-file.txt | sort > unix-file.txt
```

[[simbolos_especiales]]
[[basics_I_O_redirections]]
