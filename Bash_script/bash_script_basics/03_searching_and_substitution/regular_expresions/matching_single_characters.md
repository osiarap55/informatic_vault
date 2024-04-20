## Matching single characters

This can be done in several ways (with **ordinary characters**, with an **escaped metacharacter**, with the **. (dot) metacharacter**, or with a **bracket expression**):

 * *Ordinary character* - This include all alphanumeric characters, most whiteespace characters, and most punctuation characters. Thus, the regular expression **a** matches the character a. The usage should be pretty straighforward and obvious. It match the ordinary expression that we type.

 * *Escaping* - if metacharacter do not stand for themselves, you match one when you need to with *escaping*. This is done by preceding it with a backlash. Thus, \\\* matches literal \*.

 * The *. (dot)* - means "any single character." Thus, a.c matches all of *abc, aac, aqc*, and so on. The single dot by itself is only occasinally useful. Normally it used with other metacharecters

 * *Bracket expression* - the simplest form of a bracket expression is to enclose a list of characters between square brackets, such us *[aeiouy]*, which matches any lowercase English vowel. 
	For example: 
	
		*c[aeiouy]t* matches *cat, cot,* and *cut* (as well as cet, cit and cyt).


### Other types of matching

 * Supplyin a caret *(^)* as the first character in the bracket expression complements the set of characters that are matcheed; such us a complemented set matches ant character **not** in the bracketed list.
	For example: 

		*[^aeiouy]* matches anything that isn't a lowercase  vowel, icludinf the uppercase vowels, all constants, digits, punctuation, and so on...

 * Matching losts of characters by listing them all gets tedious, This is why bracket expressions include *ranges* of characters:
	For example:
		
		[0123456789] to match a digit or [0123456789abcdefABCDEF] to match a hexadecimal digit. This can be shortened to *[0-9]* and *[0-9a-fA-F]*, respectively.

 * As we see before [[what_is_regular_expression?]], *Collating* is the act of giving and ordering to some group or set of items. A POSIX collating element consists of the name of the element in the current locale, enclosed by [. and .].
	For example:

		For *ch* as discussed, the locale might use [.ch.], Assuming the existence of [.ch.], the regular expression [ab[.ch.]de] matches any characters *a, b, d or e*, or the pair *ch*

 * *equivalence class* enclose the name of the class between [=and=].
	For example:

		The regular expression [a[=e=]iouy] would match all the lowercase English vowels, as well as the letters é, è and so on...

 * *especial componets* the are writting by enclosing the name of the class in [:and:].
	For example:

		The range expressions for decimal and hexadeciaml digits can, and should be expressed by using the classes: [[:digit:]] and [[:xdigit:]].

[[BRE_basic_regular_expression]]
