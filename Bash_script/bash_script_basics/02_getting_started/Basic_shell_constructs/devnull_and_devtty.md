## Special Files

### /dev/null

/dev/null files is know as the "bit bucket"

Data is sent to this file is thrown away by the system. In other words, a program writing data to this file always belives that it has successfully writen the data, but in pratice, nothing is done with it.

 * This is useful when you need a command's exit status.(for example it doesn't show in the output of the terminal if we send the "fails" to this file).

```sh
if grep pattern myfile > /dev/null
then
	...		#pattern is there
else
	...		#pattern is not there
fi
```

### /dev/tty

when progrmas opens this file, Unix automatically redirects it to the real terminal associated with the program.

 * This is usefulfor reading input that must come from a human, such as a password. 
 * It is also useful to generating error messages.

```sh
printf "Enter new password: "
stty -echo
read pass < /dev/tty
printf "Enter again: "
read pass2 < /dev/tty
stty echo
```

[[devtty]]
[[basics_I_O_redirections]]
