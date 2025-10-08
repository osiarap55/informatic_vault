# cut

## Usage

cut -c list [file ...]
cut -f list [-d delim] [file ...]

## Purpose

To select one or more fields or groups of characters from an input file, presumably for further processing within a pipeline.

## Major options

- **`-c list`**  
  Cut based on characters. *list* is a comma-separated list of character numbers or ranges, such as `1,3,5-12,42`.

- **`-d delim`**  
  Use *delim* as the delimiter with the `-f` option. The default delimiter is the tab character.

- **`-f list`**  
  Cut based on fields. *list* is a comma-separated list of field numbers or ranges.

## Behavior

Cut out the named fields or ranges of input characters. When processing fields, each delimiter character separates fields.  
The output fields are separated by the given delimiter character.  
Read standard input if no files are given on the command line. See the text for examples.

## Caveats

- On POSIX systems, `cut` understands multibyte characters. Thus, “character” is not synonymous with “byte.” See the manual pages for `cut(1)` for the details.  
- Some systems have limits on the size of an input line, particularly when multibyte characters are involved.

[[selecting_fields_with_cut]]

 #bash_command
