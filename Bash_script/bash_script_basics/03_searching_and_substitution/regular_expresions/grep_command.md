```
GREP

*Usage*
	grep [ options ... ] pattern-spec [ files ... ]

*Purpose*
	To print linex of text that match one or more patterns. This is often the first stage in a pipeline that does further processing on matched data.

*Major option*
	-E
		Match using extended regular expressions. grep -E replaces the traditional *egrep* command.
	-F
		Match using fixed strings. grep -F replaces the traditional *fgrep* command.
	-e pat-list
		Usually, the first nonoption argument specifies the pattern(s) to match. Multiple patterns can be supplied by quoting them and separating them with newlines. In the case that the pattern starts with a minus sign, grep could get confused and treat it as an option. The -e option specifies that its argument is a pattern, even if it starts with a minus sign.
	-f pat-file
		Read patterns from the file *pat-file*
	-i
		Ignore lettercase when doing pattern matching
	-l
		List the names of files that match the pattern instead of printing the matching lines.
	-q 
		Be quiet. Instead of writing lines to standard output, grep exits successfully if it matched the pattern, unsuccessfully otherwise.
	-s
		Suppress error messages. This often used together with -q.
	-v
		Print lines that do not match the pattern.

*Behavior*
	Read through each file named on the command line. Wehn a line matched the parttern being searched for, print the line. When multiple files are named, grep precedes each line with the filename and colon. The default is to use EREs.

*Ceveats*
	You can use multiple -e and -f options to build up a list of patterns to search for.

```


#bash_command
[[regular_expressions]]
