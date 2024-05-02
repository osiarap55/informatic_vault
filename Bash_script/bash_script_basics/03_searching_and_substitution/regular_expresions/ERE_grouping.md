## Grouping

You may have noticed that for EREs, we've stated that the operators are applied to "preceding regular expression." The reason is that parentheses provide **Grouping**.

### ecample of grouping

 * **(why)+** matches one or more occurences of the world *why*.

### when is grouping valuable

 * Grouping is particulary valueble and neccesary when using [[ERE_alternation]]. It allows you to build complicated and flexible regular expressions.
	
	* For example:

```sh
[Tt]he(CPU|computer) is 
```

matches sentences using either *CPU* or *computer* in between *The* or *the* ans *is*.

 * Grouping is also neccesary when using repetitions operator together eith alternations

	* For example

```sh
(read|write)+
```

matches one or more occurences of either of the words *read* or *write*

 * Grouping is helpful whe using alternations together with ^ and $ anchor characters. Becouse | has the lowest precedence of all the operators, the regular expressions:

```sh
^abcd|efgh$
```
means "match abcd at the beginning of the string, *or* match efgh at the end of the string"

```sh
^(abcd|efgh)$
```
ehich means "match a string containing exactly *abcd* or exactly *efgh*"

[[ERE_extended_regular_expression]]
