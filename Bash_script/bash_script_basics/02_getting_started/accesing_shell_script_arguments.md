## Accessing Shell Scripts ARguments

 * The so-called *positional parameters* represent a shell script's command-line arguments.
 * They also represent a function's arguments within shell function.
 * Individual arguments are named by integers numbers (if is greater than nine you have to enclose the number {..})

```sh
echo first arg is $1
echo thenth arg is ${10}
```

### example

Let's see an example where we want to see what terminal a user is using(this is useful when there are a lot of users in the server)

```sh
who | grep Lucas
```
Now, let's do a script with the first argument being the username we want to find

```sh
➜  02_getting_started (main) cat > finduser
#! /bin/sh

# finduser --- see if user named by first argument is logged in

who | grep $1
^D

➜  02_getting_started (main) chmod +x finduser
➜  02_getting_started (main) ./finduser lucas
➜  02_getting_started (main) ./finduser paradiseland
paradiseland86 tty7         2024-04-09 16:32 (:0)
paradiseland86 pts/1        2024-04-09 16:54 (tmux(6936).%0)
paradiseland86 pts/2        2024-04-09 17:29 (tmux(6936).%1)
➜  02_getting_started (main)                                 
```

This program isn't perfect. What happend if we don't give it any arguments?

```sh
➜  02_getting_started (main) finduser
 Modo de empleo: grep [OPCIÓN]... PATRONES [FICHERO]...
 Pruebe 'grep --help' para más información.  
```
#bash_introduction
