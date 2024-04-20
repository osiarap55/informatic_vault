## Simple Execution Tracing

Sometimes we will write our code and it will not do what we want. One way to get some idea what your program is doing is to turn on *executing tracing*

### What is executing tracing?

Its when the shell print out each command as it's executed, preceded by "+", For example:

```sh
➜  02_getting_started (main) sh -x nusers
+ who
+ wc -l
3 
```

* You can turn execution traacing on within a script by using the command -x, and turn it off again with set +x.

```sh
➜  02_getting_started (main) cat > trace1.sh
#! /bin/sh

set -x
echo 1st echo

set +x
echo 2nd echo
^D

➜  02_getting_started (main) chmod +x trace1.sh

➜  02_getting_started (main) ./trace1.sh
+ echo 1st echo
1st echo
+ set +x
2nd echo
```

#bash_introduction


