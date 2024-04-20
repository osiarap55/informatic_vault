### Simple script

The command *who* tells you who is logged in:

```sh
$ who

paradiseland86 tty7         2024-02-13 17:03 (:0)                                               
paradiseland86 pts/1        2024-02-13 17:04 (tmux(3521).%0)                                    
paradiseland86 pts/2        2024-02-13 17:05 (tmux(3521).%1)                                    
paradiseland86 pts/3        2024-02-13 18:35 (tmux(3521).%2)
```

If you want to do a program that count the users that are logged in:

```sh
$ cat > nusers		# create a file, copy terminal input
who | wc -l			# program text
^D					# Crtl-D end the file
$ chmod +x nusers 	# make it executable
./nusers			# do a test
	4				# output is the number of users.
```
[[nusers]]
#bash_introduction
