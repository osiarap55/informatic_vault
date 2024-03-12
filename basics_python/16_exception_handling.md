# Python uses try and except to handle errors gracefully. A graceful exit (or graceful handling) of errors is a simple programming idiom - a program detects a serious error condition and "exits gracefully", in a controlled manner as a result. Often the program prints a descriptive error message to a terminal or log as part of the graceful exit, this makes our application more robust. The cause of an exception is often external to the program itself. An example of exceptions could be an incorrect input, wrong file name, unable to find a file, a malfunctioning IO device. Graceful handling of errors prevents our applications from crashing.
# We have covered the difference Python error types. If we use TRY and EXCEPT in our program, then it will not raise errors in those blocks

# try:
#    code in this block if things go well
# except:
#    code in this block run if things going wrong

# example:
try:
    print(10 + "5")
except:
    print("something went wrong")

# In the example above the second operand is a string. We could change it to float or int to add it with the number to make it work. But without any changes, the second block, except, will be executed.

# example 1:

try:
    name = input("Enter your name:")
    year_born = input("year you were born:")
    age = 2024 - year_born
    print(f"Your are{name}. And your age is {age}.")
except:
    print("something went wrong")

# In the above example, the exception block will run and we do not know exactly the problem. To analyze the problem, we can use the different error types with except.

# The next example, it will handle the error and will also tell us the kind of error raised.

try:
    name = input("Enter your name:")
    year_born = input("year you were born:")
    age = 2024 - year_born
    print(f"Your are{name}. And your age is {age}.")
except TypeError:
    print("Type error occured")
except ValueError:
    print("Value error occured")
except TypeError:
    print("zero division error occured")

# In the code above the output is going to be TypeError. let's add an additional block:

try:
    name = input("Enter your name:")
    year_born = input("year you were born:")
    age = 2024 - int(year_born)
    print(f"Your are {name}. And your age is {age}.")
except TypeError:
    print("Type error occured")
except ValueError:
    print("Value error occured")
except ZeroDivisionError:
    print("zero division error occured")
else:
    print("I usually run with the try block")
finally:
    print("I always run.")

# It is also shorten the above code as follows:

try:
    name = input("Enter your name:")
    year_born = input("year you were born:")
    age = 2024 - int(year_born)
    print(f"Your are {name}. And your age is {age}.")
except Exception as e:
    print(e)

# PACKING AND UNPACKING ARGUMENTS IN PYTHON

# we use two operators:
# * for tuples
# ** for dictionaries

# Let us take as an example below. It takes only arguments but we have list. We can unpack the list and changes to argument

# UNPACKING

# Unpacking Lists

def sum_of_five_nums(a, b, c, d, e):
    return a + b + c + d + e

lst = [1, 2, 3, 4, 5]
# print(sum_of_five_nums(lst))

# When we run this code, it raise an error, because this function takes numbers (not a list) as arguments. Let us unpack/destructure the list

def sum_of_five_nums1(a, b, c, d, e):
    return a + b + c + d + e

lst = [1, 2, 3, 4, 5]
print(sum_of_five_nums1(*lst))

# We can also use unpacking in the range built-in function that expects a start and an end.

numbers = range(2, 7)
print(list(numbers))
args = [2, 7]
numbers = range(*args)
print(numbers)

# A list or a tuple can also be unpacked like this:

countries = ["Finland", "Sweden", "Norway", "Denmark", "Iceland"]
fin, sw, nor, *rest = countries
print(fin, sw, nor, rest)
numbers = [1, 2, 3, 4, 5, 6, 7]
one, *middle, last = numbers
print(one, middle, last)

# Unpacking Dictionaries

def unpacking_person_info(name, country, city, age):
    return f"{name} lives in {country}, {city}. He is {age} year old."
dct = {"name":"Armando", "country":"Spain", "city":"Malaga", "age":25}
print(unpacking_person_info(**dct))

# PACKING

# Sometimes we never know how many arguments need to be passed to a python function. We can use the packing method to allow our function to take unlimited number or arbitrary number of arguments.

# Packing Lists

def sum_all(*args):
    s = 0
    for i in args:
        s += i
    return s
print(sum_all(1, 2, 3))
print(sum_all(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

# Packing Dictionaries

def packing_person_info(**kwargs):
    # check the type of kwargs and it is a dict type
    # print(type(kwargs))
    # Printing dictionary items
    for key in kwargs:
        print(f"{key} = {kwargs[key]}")
    return kwargs
print(packing_person_info(name="Armando", country="Spain", city="Malaga", age=25))

# SPREADING IN PYTHON

# Like in JavaScript, spreading is possible in Python. Let us check it in an example below:

lst_one = [1, 2, 3]
lst_two = [4, 5, 6, 7]
lst = [0, *lst_one, *lst_two]
print(lst)
country_lst_one = ["Finland", "Sweden", "Norway"]
country_lst_two = ["Denmark", "Iceland"]
nordic_countries = [*country_lst_one, *country_lst_two]
print(nordic_countries)

# ENUMERATE

# if we are interested in an index of a list, we use enumerate built-in function to get the index of each item in the list.

for index, item in enumerate([20, 30, 40]):
    print(index, item)

for index, i in enumerate(countries):
    print("hi")
    if i == "Finland":
        print(f"The country {i} has been found at index {index}")

# ZIP

# Sometimes we would like to combine lists when looping through them. See the example below:

fruits = ["banana", "orange", "mango", "lemon", "lime"]
vegetables = ["Tomato", "Potato", "Cabbage", "Onion", "Carrots"]
fruits_and_veges = []
for f, v in zip(fruits, vegetables):
    fruits_and_veges.append(({"fruit":f, "veg":v}))

print(fruits_and_veges)


#basics_python
