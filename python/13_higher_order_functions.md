#### In python functions are trated as first class citizens, allowing you to perform the  following operations on functions:
- A function can take one or more functions as parameters
- A function can be returned as a result of another function
- A function can be modified
- A function can be assigned to a variable

#### In this section, we will cover:
1.- Handing functions as parameters
2.- Returning functions as return valie from another functions
3.- Using Python closures and decorators


#### FUNCTIONS AS A PARAMETER

```python

def sum_numbers(nums):
    return sum(nums)

def higher_order_function(f, lst):
    summation = f(lst)
    return summation
result = higher_order_function(sum_numbers, [1, 2, 3, 4, 5])
print(result)

```

#### FUNCTIONS AS A RETURN VALUE

```python

def square(x):
    return x ** 2

def cube(x):
    return x ** 3

def absolute(x):
    if x >= 0:
        return x
    else:
        return -(x)

def higher_order_function_1(type):
    if type == "square":
        return square
    elif type == "cube":
        return cube
    elif type == "absolute":
        return absolute

result = higher_order_function_1("cube")
print(result(3))
result = higher_order_function_1("square")
print(result(3))
result = higher_order_function_1("absolute")
print(result(-3))

```

#### PYRHON CLOSURES

```python

def add_ten():
    ten = 10
    def add(num):
        return num + ten
    return add
closure_result = add_ten()
print(closure_result(5))
print(closure_result(10))

```

### PYTHON DECORATORS
A decorator is a design pattern in Python that allows a user to add new functionality to an existing object without modifying its structure. Decorators are usually called before the definition of a function you want to decorate.

#### Creating Decorators

```python

def greeting():
    return "Welcome to Python"
def uppercase_decorator(function):
    def wrapper():
        func = function()
        make_uppercase = func.upper()
        return make_uppercase
    return wrapper
g = uppercase_decorator(greeting)
print(g())

```

#### Lets implement the example above with a decorator

```python

def uppercase_decorator_1(function):
    def wrapper():
        func = function()
        make_uppercase = func.upper()
        return make_uppercase
    return wrapper
@uppercase_decorator_1
def greeting_1():
    return "Welcome to Python"
print(greeting_1())

```

### Applying Multiple DEcorators to a single Function
#### First Decorator

```python

def uppercase_decorator_2(function):
    def wrapper():
        func = function()
        make_uppercase = func.upper()
        return make_uppercase
    return wrapper

```

#### Second decorator

```python

def split_string_decorator(function):
    def wrapper():
        func = function()
        splitted_string = func.split()
        return splitted_string

    return wrapper

@split_string_decorator
@uppercase_decorator_2      # .upper() function does not work with lists

def greeting_2():
    return "welcome to python"

print(greeting_2())

```

#### ACCEPTING PARAMETERS IN DECORATOR FUNCTIONS
Most of the time we need our functions to take parameters, so we might need to define a decorator that accepts parameters

```python

def decorator_with_parameters(function):
    def wrapper_accepting_parameters(para1, para2, para3):
        function(para1, para2, para3)
        print("I live in {}".format(para3))
    return wrapper_accepting_parameters

@decorator_with_parameters
def print_full_name(first_name, last_name, country):
    print("I am {} {}. I love to teach.".format(
        first_name, last_name, country))

print_full_name("Armando", "Garcia","Spain")

```

### BUILT-IN HIGHER ORDER FUNCTIONS
#### PYTHON - MAP FUNCTION

The map() function is a built-in function that takes a function and iterable as parameters

syntax 

#### IMPORTANT --- map(function, iterable)

#### Example 1

```python

numbers = [1, 2, 3, 4, 5] # iterable
def square(x):
    return x ** 2
numbers_squared = map(square, numbers)
print(list(numbers_squared))    # [1, 4, 9, 16, 25]
# Lets apply it with a lambda function
numbers_squared = map(lambda x : x ** 2, numbers)
print(list(numbers_squared))    # [1, 4, 9, 16, 25]

```

#### Example 2

```python

numbers_str = ["1", "2", "3", "4", "5"] # iterable
numbers_int = map(int, numbers_str)
print(list(numbers_int))

```

#### Example 3

```python

names = ["Armando", "Maria", "Lucas", "Alberto"] # iterable

def change_to_upper(name):
    return name.upper()

names_upper_cased = map(change_to_upper, names)
print(list(names_upper_cased))

```

#### Lets apply it with a lambda function

```python

names_upper_cased = map(lambda name : name.upper(), names)
print(list(names_upper_cased))

```

#### PYTHON - FILTER FUNCTION

 The filter() function calls the specified function which returns boolean for each item of the specified iterable (list). It filters the items that satisfy the filtering criteria.

 syntax
filter(ffunction, iterable)

#### Example 1

```python

numbers = [1, 2, 3, 4, 5] 

def is_even(num):
    if num % 2 == 0:
        return True
    return False

even_numbers = filter(is_even, numbers)
print(list(even_numbers))

```

#### Example 2

```python

numbers = [1, 2, 3, 4, 5]  # iterable

def is_odd(num):
    if num % 2 != 0:
        return True
    return False

odd_numbers = filter(is_odd, numbers)
print(list(odd_numbers))       

```

#### Filter long name

```python

names = ['Asabeneh', 'Lidiya', 'Ermias', 'Abraham']  # iterable
def is_name_long(name):
    if len(name) > 7:
        return True
    return False

long_names = filter(is_name_long, names)
print(list(long_names))     

```

#### PYTHON - REDUCE FUNCTION

The reduce() function is defined in the functools module and we should import it from this module. Like map and filter it takes two parameters, a function and an iterable. However, it does not return another iterable, instead it returns a single value.

#### Example 1

```python

from functools import reduce

numbers_str = ["1", "2", "3", "4", "5"]
def add_two_nums(x, y):
    return int(x) + int(y)

total = reduce(add_two_nums, numbers_str)
print(total)

```

#basics_python
