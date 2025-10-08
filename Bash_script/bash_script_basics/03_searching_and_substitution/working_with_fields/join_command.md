# 3.3.3 Joining Fields with join

The `join` command lets you merge files, where the records in each file share a common *key* — that is, the field which is the primary one for the record. Keys are often things such as usernames, personal last names, employee ID numbers, and so on. For example, you might have two files, one which lists how many items a salesperson sold and one which lists the salesperson’s quota:

---

# join

## Usage

join [options ...] file1 file2

## Purpose

To merge records in sorted files based on a common key.

## Major options

- **`-1 field1`**  
- **`-2 field2`**  
  Specifies the fields on which to join. `-1 field1` specifies *field1* from *file1*, and `-2 field2` specifies *field2* from *file2*. Fields are numbered from one, not from zero.

- **`-o file.field`**  
  Make the output consist of field *field* from file *file*. The common field is not printed unless requested explicitly. Use multiple `-o` options to print multiple output fields.

- **`-t separator`**  
  Use *separator* as the input field separator instead of whitespace. This character becomes the output field separator as well.

## Behavior

Read *file1* and *file2*, merging records based on a common key. By default, runs of whitespace separate fields.  
The output consists of the common key, the rest of the record from *file1*, followed by the rest of the record from *file2*.  

If *file1* is `-`, `join` reads standard input. The first field of each file is the default key upon which to join; this can be changed with `-1` and `-2`. Lines without keys in both files are not printed by default. (Options exist to change this; see the manual pages for `join(1)`.)

## Caveats

The `-1` and `-2` options are relatively new. On older systems, you may need to use `-j1 field1` and `-j2 field2`.

[[Joining_fields_with_join]]
 #bash_command
