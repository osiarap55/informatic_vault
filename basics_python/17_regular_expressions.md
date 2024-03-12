# A regular expresion or RegEx is a special text string that helps to find patterns in data. A RegEx can be used to chechk if some pattern exists in a different data type. To use RegEx in python first we should import the RegEx module which is called re.

# The re Module
# After importing the module we can use it to detect or find patterns.

import re

# Methods in re Module

# To find a pattern we use different set of re character sets that allows to search for a match in a string.

# - re.match(): searches only in the beginning of the first line of the string and returns matched objects if found, else returns None.

# - re.search: Returns a match object if there is one anywhere in the string, including multiline stings.

# - re.findall: Returns a list containing all matches

# - re.split: Takes a string, aplits it at the match pontins, return a list

# - re.sub: REplaces one or many matches within a string

# MATCH

# syntac 
# re.match(substring, string, re.I)
# substring is a string or a pattern, string is the text we look for a pattern, re.I is case ignore

import re

txt = "I love to teach python and javaScript"
# It returns an object with span, and match
match = re.match("I love to teach", txt, re.I)
print(match)
# We can get the starting and ending position of thr match as tuple using span
span = match.span()
print(span)
# Lets find the start and stop position from the span
start, end = span
print(start, end)
substring = txt[start:end]
print(substring)

# As you can see, search is much better than match beacouse it can look for the pattern throughout the text. Search returns a match object with a first match that was found, otherwise it returns None. A much better re function is findall. This function checks for the pattern through the whole string and returns all the matches as a list.

# SEARCHING FOR ALL MATCHES USING FINDALL

# findall() returns all the matches as a list

txt = '''Python is the most beautiful language that a human being ever create
I recommend python for a fist programming language'''

# It return list
matches = re.findall("language", txt, re.I)
print(matches)

# As you can see, the word language was found two times in the string. Let us practive some more. Now we will look for both Python and python words in the string:

txt = '''Python is the most beautiful language that a human being ever create
I recommend python for a fist programming language'''

# It return list
matches = re.findall("python", txt, re.I)
print(matches)

# Since we are using re.I both lowercase and uppercase letters are included. If we do not have the re.I flag, then we will have to write our pattern differently. Let us chechk it out:

txt = '''Python is the most beautiful language that a human being ever create
I recommend python for a fist programming language'''

matches = re.findall("Python|python", txt)
print(matches)

matches = re.findall("[Pp]ython", txt)
print(matches)

# Replacing a Substring

txt = '''Python is the most beautiful language that a human being ever create
I recommend python for a fist programming language'''

match_replaced = re.sub("Python|python", "JavaScript", txt, re.I)
print(match_replaced)
# OR
match_replaced = re.sub("[Pp]ython", "JavaScript", txt, re.I)
print(match_replaced)

# Let us add oine more example. The followaing string is really hard to read unless we remove the % symbol. Replacing the % with an empty string will clean the text.

txt = '''%I a%m te%%a%%che%r% a%n%d %% I l%o%ve te%ach%ing. 
T%he%re i%s n%o%th%ing as r%ewarding a%s e%duc%at%i%ng a%n%d e%m%p%ow%er%ing p%e%o%ple.
I fo%und te%a%ching m%ore i%n%t%er%%es%ting t%h%an any other %jobs. 
D%o%es thi%s m%ot%iv%a%te %y%o%u to b%e a t%e%a%cher?'''

matches = re.sub("%", "", txt)
print(matches)

# SPLIT TEXT USING REGEX SPLIT

txt = '''I am teacher and  I love teaching. 
There is nothing as rewarding as educating and empowering people.
I found teaching more interesting than any other jobs. 
Does this motivate you to be a teacher?'''
print(re.split("\n", txt))

# WRITING REGEX PATTERNS

# To declare a string variable we use a single or double quote. To deaclare RegEx variable r". The following pattern only identifies apple with lowercase, to make it case insensiitive either we should rewrite our pattern or we should add a flag.

regex_pattern = r"apple"
txt = '''Apple and banana are fruits. An old cliche says an apple a day a doctor way has been replaced by a banana a day keeps the doctor far far away.'''
matches = re.findall(regex_pattern, txt)
print(matches)

# To make case insensitive adding flag '
matches = re.findall(regex_pattern, txt, re.I)
print(matches)
# or we can use a set of characters method
regex_pattern = r"[Aa]pple"
matches = re.findall(regex_pattern, txt)
print(matches)

# examples to clarify 17.2*

# Let us use square bracket to include lower and upper case

regex_pattern = r'[Aa]pple' # this square bracket mean either A or a
txt = 'Apple and banana are fruits. An old cliche says an apple a day a doctor way has been replaced by a banana a day keeps the doctor far far away.'
matches = re.findall(regex_pattern, txt)
print(matches)  # ['Apple', 'apple']

# If we want to look for the banana, we write the pattern as follows:

regex_pattern = r'[Aa]pple|[Bb]anana' # this square bracket means either A or a
txt = 'Apple and banana are fruits. An old cliche says an apple a day a doctor way has been replaced by a banana a day keeps the doctor far far away.'
matches = re.findall(regex_pattern, txt)
print(matches)  # ['Apple', 'banana', 'apple', 'banana']

# Using the square bracket and or operator , we manage to extract Apple, apple, Banana and banana.

# ESCAPE CHARACTER(\) IN RegEx

regex_pattern = r"\d"  # d is a special character which means digits 
txt = 'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
matches = re.findall(regex_pattern, txt)
print(matches)  # This is not what we want

# One or more times(+)

regex_pattern = r"\d+"
'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
matches = re.findall(regex_pattern, txt)
print(matches)

# Period(.)

regex_pattern = r"[a]." # this square bracket means a and . means any character except new line
txt = '''Apple and banana are fruits'''
matches = re.findall(regex_pattern, txt)
print(matches)

regex_pattern = r"[a].+" # . any character, + any character one or more times
matches = re.findall(regex_pattern, txt)
print(matches)

# Zero or more times(*)
# Zero or many times. The pattern could may not occur or it can occur many times

regex_pattern = r"[a].*" #. any character, * any character zero or more times
txt = '''Apple and banana are fruits'''
matches = re.findall(regex_pattern, txt)
print(matches)  

# Zero or One time(?)
# Zero or one time. The pattern may not occur or it may occur once.
txt = '''I am not sure if there is a convention how to write the word e-mail.
Some people write it as email others may write it as Email or E-mail.'''
regex_pattern = r"[Ee]-?mail"
matches = re.findall(regex_pattern, txt) # ? means here that '-' is optional
print(matches)

# Quantifier in RegEx
# We can apecify thength of the substring we are looking for in a text, using a curly bracket. Let uss imagine, we are interested in a substring with a lenght of 4 characters.

txt = 'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
regex_pattern = r'\d{4}'  # exactly four times
matches = re.findall(regex_pattern, txt)
print(matches)  # ['2019', '2021']

txt = 'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
regex_pattern = r'\d{1, 4}'   # 1 to 4
matches = re.findall(regex_pattern, txt)
print(matches)  # ['6', '2019', '8', '2021']

# Cart^
    # starts with

txt = 'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
regex_pattern = r"^This"
matches = re.findall(regex_pattern, txt)
print(matches)

    # Negation

txt = 'This regular expression example was made on December 6,  2019 and revised on July 8, 2021'
regex_pattern = r"[^A-Za-z ]+"
matches = re.findall(regex_pattern, txt)
print(matches)











#basics_python
