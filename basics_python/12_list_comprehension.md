# list comprehension in Python is a compact wat of crating a list from a sequence. It is a short way to create a new list. List comprehension is considerably faster than processing a list using for loop.

# Example 1

# One way
language = "Python"
lst = list(language)
print(type(lst))
print(lst)

# Second way
lst = [i for i in language]
print(type(lst))
print(lst)

# Example 2

numbers = [i for i in range(11)]
print(numbers)

squares = [i * i for i in range(11)]
print(squares)

numbers = [(i, i * i) for i in range(11)]
print(numbers)

# Example 3 
# List comprehension can be combined with if expression

even_numbers = [i for i in range(21) if i % 2 == 0]
print(even_numbers)

odd_numbers = [i for i in range(21) if i % 2 != 0]
print(odd_numbers)

numbers = [-8, -7, -3, -1, 0, 1, 3, 4, 5, 7, 6, 8, 10]
positive_even_numbers = [i for i in range(21) if i % 2 == 0 and i > 0]
print(positive_even_numbers)

list_of_lists = [[-1, 2, 3], [4, 5, 6], [7, 8, 9]]
flattened_list = [ number for row in list_of_lists for number in row]
print(flattened_list)

# lambda Function
# Lambda function is a small anonymous function without a name. It can take any number of arguments, but can only have one expression. lambda function is similar to anonymous function in JavaScript. WE need it when we want to write an anonymous function inside another function.

# Creating a Lambda Function 
# To create a lambda function we use lambda keyword followed by a parameter(s), followed by an expression. See the syntax and the example below. Lambda function does not use return but it explicitly returns the expression.

# Example 1

def add_two_nums(a, b):
    return a + b
print(add_two_nums(2, 3))

add_two_nums = lambda a, b: a + b 
print(add_two_nums(2,4))

print((lambda a, b: a + b)(2,3))

square = lambda x : x ** 2
print(square(3))
cube = lambda x : x ** 3
print(cube(4))

multiple_variable = lambda a, b, c: a ** 2 - 3 * b + 4 * c
print(multiple_variable(5, 3, 8))

# Lambda Function inside another function

def power(x):
    return lambda n : x ** n
cube = power(2)(3)
print(cube)
two_power_of_five = power(2)(5)
print(two_power_of_five)


#basics_python
