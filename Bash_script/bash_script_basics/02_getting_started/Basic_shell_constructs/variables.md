## Variables

 * A *variable* is the name that you give to particular piece of information.
 * Every *variable* has a *value*, which is the content s or information that you assigne to the *varible*
 * In the case of *shell variables* values can be, and often are empty, the contain no characters. This is legitime, common, and useful. Empty variables are referred to as *null*. (we will see this in the future).

#### examples

```sh
➜  ~  first=armando                                              
➜  ~  middle=Garcia                                             
➜  ~  last=Rodriguez
➜  ~  fullname="$first $middle $last"
➜  ~  echo $fullname
armando Garcia Rodriguez
➜  ~  oldname=$fullname                  
➜  ~  echo $oldname 
armando Garcia Rodriguez
```

 * As you can see, variables are defined with an *= character* without any intervening spaces.
 * Shell variable *values* are retrived by prefixing the varibles's name with a *$ character*
 * "Quoting" aren't neccesary around the variabels but using them doesn't hurt either, an it's neccesary when concataned variables.

[[Basic_shell_constructs]]
