## Regualar expression extensions

Many programs provide extensions to regular expression syntax. The most extended expressions operators are \\< and \\>, which match the beginning and the end of a word:

 * For example the regular expression **\\<chop** matches *use chopsticks* but does not match *eat a lambchop*
 * **chop\\>** matches the second string, but does not matches the first.

[[regular_expressions]]
