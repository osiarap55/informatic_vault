## How to Set Locales (i18n) On a Linux or Unix
Author: Vivek Gite Last updated: December 12, 2022 3 comments

### What is a “locale” on a Linux operating system? How do I set or get locals (i18n) values on a Linux operating system?

Locales defines language and country specific setting for your programs and shell session. You can use locales to see date, time, number, currency and other values formatted as per your country or language on a Linux or Unix-like system. To set system’s locale you need use shell variable. For example, LANG variable can be used to set en_US (English US) language. This page shows how to set locales (i18n) on a Linux or Unix operating system.

### How do I show current locale settings on a Linux or Unix?

The syntax is:

```sh
locale
locale name
locale [options] name
```
The locale command displays information about the current locale, or all locales on the screen.

locales command examples
Simply type the following :

```sh
➜  ~  locale           
LANG=en_US.UTF-8
LANGUAGE=es_ES
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=
➜  ~  
```

### Display all available locales on your Linux or Unix-like system
Pass the -a option to locale command:

```sh
locale -a
```

Sample outputs:

```sh
C.UTF-8
en_IN
en_IN.utf8
POSIX
```

You also run the following command on a Debian or Ubuntu Linux based system to see the list of all supported locales:

```sh
➜  ~  less /usr/share/i18n/SUPPORTED
aa_DJ.UTF-8 UTF-8
aa_DJ ISO-8859-1
aa_ER UTF-8
aa_ER@saaho UTF-8
aa_ET UTF-8
af_ZA.UTF-8 UTF-8 
af_ZA ISO-8859-1  
agr_PE UTF-8     
ak_GH UTF-8 
am_ET UTF-8      
an_ES.UTF-8 UTF-8
an_ES ISO-8859-15                                          
anp_IN UTF-8
ar_AE.UTF-8 UTF-8
ar_AE ISO-8859-6
ar_BH.UTF-8 UTF-8
ar_BH ISO-8859-6
ar_DZ.UTF-8 UTF-8
ar_DZ ISO-8859-6
ar_EG.UTF-8 UTF-8
ar_EG ISO-8859-6
ar_IN UTF-8
ar_IQ.UTF-8 UTF-8
ar_IQ ISO-8859-6
ar_JO.UTF-8 UTF-8
ar_JO ISO-8859-6
ar_KW.UTF-8 UTF-8
ar_KW ISO-8859-6
ar_LB.UTF-8 UTF-8
ar_LB ISO-8859-6
ar_LY.UTF-8 UTF-8
ar_LY ISO-8859-6
ar_MA.UTF-8 UTF-8
ar_MA ISO-8859-6
ar_OM.UTF-8 UTF-8
ar_OM ISO-8859-6
ar_QA.UTF-8 UTF-8
ar_QA ISO-8859-6
ar_SA.UTF-8 UTF-8
ar_SA ISO-8859-6
ar_SD.UTF-8 UTF-8
ar_SD ISO-8859-6
ar_SS UTF-8
ar_SY.UTF-8 UTF-8
ar_SY ISO-8859-6
ar_TN.UTF-8 UTF-8
ar_TN ISO-8859-6
ar_YE.UTF-8 UTF-8
ar_YE ISO-8859-6
ayc_PE UTF-8
az_AZ UTF-8
az_IR UTF-8
as_IN UTF-8
ast_ES.UTF-8 UTF-8
ast_ES ISO-8859-15
be_BY.UTF-8 UTF-8
be_BY CP1251
be_BY@latin UTF-8
bem_ZM UTF-8
```


### Locale category sections

The following category sections are defined by POSIX:

**LC_CTYPE** : Explains the interpretation of byte sequences as characters. For example, single versus multibyte characters, character classifications (e.g., alphabetic or digit), and the behavior of character classes.
**LC_COLLATE** : Set collation rules used for sorting and regular expressions, including character equivalence classes and multicharacter collating elements.
**LC_MESSAGES** : It affects the language in which messages are displayed and what an affirmative or negative answer looks like.
**LC_MONETARY** : Set formatting used for monetary-related numeric values.
**LC_NUMERIC** : Determines the formatting rules used for nonmonetary numeric values—for example, the thousands separator and the radix character.
**LC_TIME** : Governs the formatting used for date and time values. For example, most of Europe uses a 24-hour clock versus the 12-hour clock used in the United States.

For example:

```sh
➜  ~  locale -c -k LC_NUMERIC 
LC_NUMERIC
decimal_point="."
thousands_sep=","
grouping=3;3
numeric-decimal-point-wc=46
numeric-thousands-sep-wc=44
numeric-codeset="UTF-8"
➜  ~  locale -c -k LC_MONETARY 
LC_MONETARY
int_curr_symbol="USD "
currency_symbol="$"
mon_decimal_point="."
mon_thousands_sep=","
mon_grouping=3;3
positive_sign=""
negative_sign="-"
int_frac_digits=2
frac_digits=2
p_cs_precedes=1
p_sep_by_space=0
n_cs_precedes=1
n_sep_by_space=0
p_sign_posn=1
n_sign_posn=1
crncystr="-$"
int_p_cs_precedes=1
int_p_sep_by_space=1
int_n_cs_precedes=1
int_n_sep_by_space=1
int_p_sign_posn=1
int_n_sign_posn=1
duo_int_curr_symbol="USD "
duo_currency_symbol="$"
duo_int_frac_digits=2
duo_frac_digits=2
duo_p_cs_precedes=1
duo_p_sep_by_space=0
duo_n_cs_precedes=1
duo_n_sep_by_space=0
duo_int_p_cs_precedes=1
duo_int_p_sep_by_space=1
duo_int_n_cs_precedes=1
duo_int_n_sep_by_space=1
duo_p_sign_posn=1
duo_n_sign_posn=1
duo_int_p_sign_posn=1
duo_int_n_sign_posn=1
uno_valid_from=10101
uno_valid_to=99991231
duo_valid_from=10101
duo_valid_to=99991231
conversion_rate=1;1
monetary-decimal-point-wc=46
monetary-thousands-sep-wc=44
monetary-codeset="UTF-8"
```

See the man page of locale(5) and locale(7) for more info on all keywords and options using the man command. For example:

```sh
man 5 locale
man 7 locale
```

### View/set global locale for all users on a “CentOS/RHEL/Scientific Linux v5.x/6.x” and older

Edit or view /etc/sysconfig/i18n to set global locale for all users:

```sh
sudo cat /etc/sysconfig/i18n
```

or

```sh
sudo vi /etc/sysconfig/i18n
```

Sample outputs:

```sh
LANG="en_US.UTF-8"
SUPPORTED="en_IN.utf8:en_IN:en_US.UTF-8:en_US:en"
SYSFONT="latarcyrheb-sun16"
```

You can also edit the /etc/profile and set global locale for all users. For example:

```sh
LANG="en_IN.utf8"
export LANG
```

For user level settings edit the ~/.bash_profile inside your $HOME (home dir).

## View/set global locale for all users on a “Fedora Linux v22” and “CentOS/RHEL/Scientific Linux 7.x” and above

The following commands works with all systemds based Linux distros such as Debian/Ubuntu, Arch, and more. Type the following cat command to see the current locale for all users:
cat /etc/locale.conf

Sample outputs:

```sh
LANG="en_IN.UTF-8"
You can use the following systemd command too. For example, try the localectl command as follows:
localectl status
```

Sample outputs:

```sh
   System Locale: LANG=en_IN.UTF-8
       VC Keymap: in-eng
      X11 Layout: in
     X11 Variant: eng
```

To see all locales available, run:

```sh
localectl list-locales
```

To set the default global system locale for all users, type the following command as root:

```sh
sudo localectl set-locale LANG=localeValueHere
sudo localectl set-locale LANG=en_IN.UTF-8
```

View/set global locale for all users on a Debian or Ubuntu Linux (pre-systemd)

To see which locales are supported on Debian/Ubuntu, enter:

```sh
locale -a|more
```

To set the locales for all users, enter:

```sh
sudo locale-gen en_IN
sudo locale-gen en_IN.UTF-8
```

Finally run:

```sh
sudo update-locale
```

Another option is to run *dpkg-reconfigure locales* command and select the locale(s) you want to generate. At the end, you’ll be asked which one should be the default. If you have users who access the system through ssh, it is recommended that you choose None as your default locale:

```sh
sudo dpkg-reconfigure locales
```

### How can I set global locale for one user?
Simply edit your bash shell profile file $HOME/.bash_profile:

```sh
vi ~/.bash_profile
```

Append/add/edit as follows:

```sh
LANG="en_IN.utf8"
export LANG
```

OR create a new .i18n file to user’s $HOME directory:

```sh
vi $HOME/.i18n
```

Append/add/edit the following as per your locale setting:

```sh
LANG="en_US.UTF-8"
SUPPORTED="en_IN.utf8:en_IN:en_US.UTF-8:en_US:en"
SYSFONT="latarcyrheb-sun16"
```

Save and close the file. Please note that ~/.bash_profile procedure should work on Linux, OS X, *BSD* and many other Unix-like systems

### Summing up

Read the following manual pages using the man command when using systemd based Linux distro:

```sh
man 7 locale
man 5 locale
man 1 localectl
man 5 locale.conf
man 5 vconsole.conf
man 7 unicode
man 8 utf-8
```

#bash_introduction
