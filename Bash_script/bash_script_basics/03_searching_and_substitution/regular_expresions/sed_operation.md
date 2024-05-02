## Sed Operation

### How is it work?

sed's operations is straightforward. Each file named on the command line is opened and read, in turn. If there are no files, standard input is used, and the filename "-" (a single dash) acts as a pseudonym for standard input.

sed reads through each file one line at a time. The line is placed in an area of memory termed the *pattern space*. This is like a variable in a programming language: an area of memory that can be changed as desired under the direction of the editing commands. All editing operations are applied to the contents of the pattern space.

When all operations have been completed, *sed* prints the final contents of the patern space to standard ooutput.ç, and then goes back to the beginning, reading another line of input.

[[regular_expressions]]
[[sed_command]]