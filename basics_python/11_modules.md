# What is a module?

# Creating a module

# importing a module

# import Functions from Module

# import Function from a Module and renaming

# OS Module

# Sys Module

# Statistics Module

from statistics import * # import all the statistics modules
ages = [20, 20, 4, 24, 25, 22, 26 ,20, 23, 22, 26]
print(mean(ages))
print(median(aages))
print(mode(ages))
print(stdev(ages))

# Math Module

import math

print(math.pi)
print(math.sqrt(2))
print(math.pow(2, 5))
print(math.floor(9.81))
print(math.ceil(9.81))
print(math.log10(100))

from math import pi
print(pi)


from math import pi, sqrt, pow, floor, ceil, log10
print(pi)                 # 3.141592653589793
print(sqrt(2))            # 1.4142135623730951
print(pow(2, 3))          # 8.0
print(floor(9.81))        # 9
print(ceil(9.81))         # 10
print(math.log10(100))    # 2

from math import pi as  PI
print(PI) 

# String Module

import string
print(string.ascii_letters) # abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
print(string.digits)        # 0123456789
print(string.punctuation)   # !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~

# Random Module

from random import random, randint
print(random())   # it doesn't take any arguments; it returns a value between 0 and 0.9999
print(randint(5, 20)) # it returns a random integer number between [5, 20] inclusive














#basics_python
