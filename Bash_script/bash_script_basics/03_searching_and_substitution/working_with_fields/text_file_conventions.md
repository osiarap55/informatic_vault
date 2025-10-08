# Text files conventions

- The prime example of the delimiter-separated field approaches is _/etc/passwd_.

```
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
```

## The seven fields of a password file entry are

1. **Username**  
2. **Encrypted password**  
   - This can be an asterisk (`*`) if the account is disabled.  
   - Possibly a different character if encrypted passwords are stored separately in `/etc/shadow`.
3. **User ID number (UID)**
4. **Group ID number (GID)**
5. **User’s personal name** and possibly other relevant data (office number, telephone number, etc.).
6. **Home directory**
7. **Login shell**

---

Some Unix tools work better with whitespace-delimited fields, others with delimiter-separated fields, and some utilities are equally adept at working with either kind of file.

 #working_with_fields
