## Matching multiple regular expressions with one expression

EREs have the most notable differences from BREs in the are of matching multiple characters. The \* does work the sme as in BREs.

Intervak expressions are also available in EREs; however, they are written using plain braces, not braces preceded by backslashes.

 * For Example: our previous examples [[matching_multiple_characters_with_one_expression]] of "exactly five occurrences of a" and "between 10 and 42 instances of q" are written **a{5}** and **q{10,42}**, respectively. Use **\\{and \}** to match literal brace characters. POSIX purposely leaves the meaning of a {without a matching} in an ERE as "undefined."

 * EREs have two additional metacharacters for finer-grained matching control, as follows:

	* ?		Match zero or one of the preceding regular expression

	* +		Match one or more of the preceding regular expression


### Explanations of ? and +

 * You can think of the ? character as meaning "optional". In others words, text matching the preceding regular expression is either present or it's not.
	For examples:
		
		ab?c matched both *ac* and *abc*, but nothing else (Compare to ab*c, which can match any number of intermediate *b* characters.)


 * The + character is conceptually similar to the \* metacharacter, except that at least one occurence of text matching the preceding regular expression must be present.
	For example:
		
		ab+c matches abc, abbc, abbbc, and so on, but does *not* match ac. You can always replace a regular expression of the form ab+c with abb*c; however, the + can save a lot of typing.
		
[[ERE_extended_regular_expression]]
