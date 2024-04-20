## Basic command searching

Shell searches for commands along the search path, **$PATH**
	* This is a colon-separated list of directories in ehich commands are found.
	* Commands may be compile executables or shell scripts, it doesn't matter.

### /bin directories

 * The default path varies from system, It will contain at least /bin or /usr/bin.
 * It might contain /usr/X11R6/bin for X windows programs
 * It might also contain /usr/local/bin for programs that your local system administrator has intalled.

```sh
➜  ~ echo $PATH
/bin:/usr/bin:....
```
### What /bin stand for

The term "bin" for directories that hold execuatables is short for *binary*.


 * Empty components in $PATH mean "the current directory". An empty components can be designe by two successive colons in the middle of the path values, or by a leading or trailing colon, which put the current directory first or last, repectly in the path search.


[[Basic_shell_constructs]]
