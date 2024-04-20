## Simple grep

The simplest use of grep is with constant strings:

```sh
➜  ~  who
paradiseland86 tty7         2024-04-13 16:58 (:0)
paradiseland86 pts/1        2024-04-13 17:10 (tmux(3524).%2)
paradiseland86 pts/2        2024-04-13 17:05 (tmux(3524).%1)
paradiseland86 pts/3        2024-04-13 17:46 (tmux(3524).%3)
➜  ~  who | grep -F tty7
paradiseland86 tty7         2024-04-13 16:58 (:0)
➜  ~  
```

This example used the -F option, to search for the fixeed string tty7. And in fact as long as yout pattern doesn't contain any regular expression metacharacters, grep's default behavior is effectively the same as if you'd used -F option.

```sh
➜  ~  who | grep tty7   
paradiseland86 tty7         2024-04-13 16:58 (:0)
```

[[searching_for_text]]
