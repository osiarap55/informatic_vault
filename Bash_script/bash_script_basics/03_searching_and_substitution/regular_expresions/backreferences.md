## Backreferences

BREs provide a mechanism, known as *Backreferences*, for saying "match whatever an earlier part of the regular expression matched"

The are two steps to using Backreferences:

	* The first step is to enclose a subexpression in \(and\). There may be up to nine enclosed subexpressions within a single pattern, and they may be nested.

	* The next step is to use *\digit*, where *digit* is a number between 1 and 9. Its meaning there is "match whatever was matched by the nth earlier parenthesized subexpression".


### Some examples

| Pattern | Matches |
| :--------| :--------|
|\\(ab\\)\\(cd\\)[def]\*\\2\\1				 | abcdcdab, abcdeeecdab, abcddeeffcdab,... |
|\\(why\\).\*\\1							 | A line with two occurrences of *why* |
|\\(\[[:alpha:]\_]\[[:alnum:]\_]\*\\) = \\1; | Simple C/C ++ assignment statement |

### useful

Backreferences are particularly useful for finding duplicated words and matching quotes:

	\(["'].*\1			*match single-or double-quoted words, like 'foo' or "bar"*

 * This way you don't have to worry about whether a single or double quote was found first.

[[BRE_basic_regular_expression]]
