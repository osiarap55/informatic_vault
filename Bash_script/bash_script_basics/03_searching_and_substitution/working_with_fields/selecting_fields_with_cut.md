# Comand cut

- The **cut** comand was designed for cutting out data from text files.
- It can =work either a field basis or a character basis.
- The latter is useful for cutting out particular columns from a file.

- Beware, though: a tab character counts as a single character.

- For Example, the following command prints the login name and full name of each user on the system:

```sh
➜  ~ cut -d : -f 1,5 /etc/passwd
root:root
daemon:daemon
bin:bin
sys:sys
sync:sync
games:games
man:man
lp:lp
mail:mail
news:news
uucp:uucp
proxy:proxy
www-data:www-data
backup:backup
list:Mailing List Manager
irc:ircd
gnats:Gnats Bug-Reporting System (admin)
nobody:nobody
systemd-network:systemd Network Management,,,
systemd-resolve:systemd Resolver,,,
messagebus:
systemd-timesync:systemd Time Synchronization,,,
syslog:
_apt:
uuidd:
tcpdump:
```

By choosing a different field number, we can extract each user's home directory:

```sh
➜  ~ cut -d : -f 6 /etc/passwd
/root
/usr/sbin
/bin
/dev
/bin
/usr/games
/var/cache/man
/var/spool/lpd
/var/mail
/var/spool/news
/var/spool/uucp
/bin
/var/www
/var/backups
/var/list
/run/ircd
/var/lib/gnats
/nonexistent
/run/systemd
/run/systemd
/nonexistent
/run/systemd
/home/syslog
/nonexistent
/run/uuidd
/nonexistent
```

Cutting by character list can occasionally be useful.

- For example, to pull out just the permissions field from ls -l:

```sh
➜  ~ ls -l | cut -c 1-10
total 24
drwxr-xr-x
drwxrwxr-x
-rwxr-xr-x
drwxrwxr-x
drwxr-xr-x
drwx------
```

 #working_with_fields
