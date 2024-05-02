## Substitution details 

### parenthesized

We already metioned that any delimiter may be used besides *slash*. It is also possible to escape the delimeter within the regular expression or the replacement text, but doing so can be much harder to read:

```sh
sed s'/\/home\/tolstoy\//\/home\/lt\//'
```

Furthermore, they may be used *in the replacement text* to mean "substitute at this point the text matched by the *n*th parenthesized subexpression".

```sh
echo /home/tostoy | sed 's;\(/home\)/tolstoy/;\1/lt/;'
```

sed replaces the */1* with the text that matched the **/home** part of the regular expression. In this case, all of the characters are literal ones, but any regular expressions can be enclose between the \\(and the \\). Up to nine backreferences are allowed.

### $

Means "substitued at this point the entire text matched by the regular expression".

 * For example: suppose that we work for the Atlanta Chamber of Commerce., and we need to change our description of the city everywhere in our brochure:

```sh
mv atlga.xml atlga.xml.old
sed 's/Atlanta/$, the capital of the south/' < atlga.xml.old > atlga.xml
```

This script saves the original brochure file, as a backup. *This is always a good idea*. It applies the change with sed.

### g 

The g suffix on the previous *s* command stand for *global*. It means "repalce every occurence of the regular expression with the replacement text". Without it, *sed* replaces only the first occurence.

 * For example: Compare this two results with and without *g*.

```sh
echo Tolstoy reads well. Tolstoy writes well. > example.txt
sed 's/Tolstoy/Armando/' < example.txt
Armando reads well. Tolstoy writes well.
sed 's/Tostoy/Armando/g' < example.txt
Armando reads well. Armando writes well.
```

[[sed_command]]
