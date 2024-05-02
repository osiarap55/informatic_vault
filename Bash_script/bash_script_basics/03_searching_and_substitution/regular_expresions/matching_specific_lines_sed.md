## matching specific lines sed

By default, *sed* applies every editing command to every input line. It is possible to restrict the lines to which a command applies by prefixing the command with *addresses*. The full form of *sed* command: [[sed_command]]

		*address command*

### There are different kind of addresses

#### Regular Expressions [[regular_expressions]]:

 * Prefixing a command with a pattern limits the command to lines matching the pattern. This can be used with the s command:

```sh
/oldfunc/ s/$/# XXX: migrate to newfuct/  
```
*annotate some source code*

A empty pattern in the s command means "use the previous regular expression":

```sh
/Tolstoy/ s//& and Camus/g
```
*Talks about both authores.*

#### The last line 
 
 * The symbol $ means *"the last line"*. For example, this script is a quick way to print the last line of a file:

```sh
sed -n '$p' "1"
```

For *sed*, *the last line* means the last line of the input. Even when processing multiple files, *sed* views them as one long input stream, and *$* applies only to the last line of the last file.

#### Line numbers

 * You can use absolute line numbers as an address. 

#### Ranges

 * You can specify a range of lines by separating as an address with a *comma*:

```sh
sed -n '10,42p' foo.xml		#prints only lines 10-42
sed '/foo/,/bar/ s/baz/quux/g'
```

The second command says "starting with lines matching **foo**, and continuing through lines matching **bar**, replace all occurence of **baz** with **quux**"

#### Negated regular expressions

 * Occasionally it's useful to apply a command to all lines that *don't* match a particular pattern. You specify this by adding an *!* character after a regular expression to look for.

```sh
/used/!s/new/used/g
```
*change new to used in all the lines that not matching used*

