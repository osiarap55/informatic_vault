# STATISTICS

 Statistics is the discipline that studies the collection, organization, displaying, analysing, interpretation and presentation of data. Statistics is a branch of Mathematics that is recommended to be a prerequisite for data science and machine learning. Statistics is a very broad field but we will focus in this section only on the most relevant part. After completing this challenge, you may go onto the web development, data analysis, machine learning and data science path. Whatever path you may follow, at some point in your career you will get data which you may work on. Having some statistical knowledge will help you to make decisions based on data, data tells as they say.

# DATA

 What is data? Data is any set of characters that is gathered and translated for some purpose, usually analysis. It can be any character, including text and numbers, pictures, sound, or video. If data is not put in a context, it doesn't make any sense to a human or computer. To make sense from data we need to work on the data using different tools.

 The work flow of data analysis, data science or machine learning starts from data. Data can be provided from some data source or it can be created. There are structured and unstructured data.

 Data can be found in small or big format. Most of the data types we will get have been covered in the file handling section.

# STATISTICS MODULES

 The Python statistics module provides functions for calculating mathematical statistics of numerical data. The module is not intended to be a competitor to third-party libraries such as NumPy, SciPy, or proprietary full-featured statistics packages aimed at professional statisticians such as Minitab, SAS and Matlab. It is aimed at the level of graphing and scientific calculators.

# NUMPY

 NumPy is the core library for scientific computing in Python. It provides a high-performance multidimensional array object, and tools for working with arrays.

# IMPORTING NUMPY

import numpy as np

print("numpy:", np.__version__)
# check the available of methods
print(dir(np))

# CREATING NUMPY ARRAYS

# creating int numpy arrays

python_list = [1, 2, 3, 4, 5]

print("Type:", type (python_list))
print(python_list)

two_dimensional_list = [[0, 1, 2], [2, 3, 4], [5, 6, 7]]
print(two_dimensional_list)

# creating Numpy(numerical python) array from python list

numpy_array_from_list = np.array(python_list)
print(type (numpy_array_from_list))
print(numpy_array_from_list)

# creating float numpy arrays
# creating a float numpy array from list with a float data type parameter

python_list = [1, 2, 3, 4, 5]

numpy_array_from_list2 = np.array(python_list, dtype=float)
print(numpy_array_from_list2)

# creating boolean numpy arrays
# creating a boolean a numpy array from list

numpy_bool_array = np.array([0, 1, -1, 0, 0], dtype=bool)

print(numpy_bool_array)

# creating multidimensional array using numpy
# A numpy array may have one or multiple rows and columns

two_dimensional_list = [[0,1,2],[3,4,5],[6,7,8]]
numpy_two_dimensional_list = np.array(two_dimensional_list)
print(type(numpy_two_dimensional_list))
print(numpy_two_dimensional_list)

# converting numpy array to a list

# we can always convert an array back to a python list using tolist().
np_to_list = numpy_array_from_list.tolist()
print(type(np_to_list))
print("one dimensional array:", np_to_list)
print("two dimensional arrays:", numpy_two_dimensional_list.tolist())

# creating numpy array from tuple 
# numpy array tuple
# creating tuple in python 
python_tuple = (1,2,3,4,5)
print(type(python_tuple))
print("python_tuple:", python_tuple)

numpy_array_from_tuple = np.array(python_tuple)
print(type(numpy_array_from_tuple))
print("numpy_array_from_tuple", numpy_array_from_tuple)

# Shape of numpy array

# The shape method provide the shape of the array as a tuple. The first is the row and the second is the column. If the array is just one dimensional it returns the size of the array.

nums = np.array([1, 2, 3, 4, 5])
print(nums)
print("shape of nums:", nums.shape)
print(numpy_two_dimensional_list)
print("shape of two dimensional lsit:", numpy_two_dimensional_list.shape)
three_by_four_array = np.array([[0,1,2,3], [4,5,6,7], [8,9,10,11]])
print(three_by_four_array.shape)


# data type of numpy array
# type of data types: str, int, float, complex, bool, list, none

int_lists = [-3, -2, -1, 0, 1, 2,3]
int_array = np.array(int_lists)
float_array = np.array(int_lists, dtype=float)

print(int_array)
print(int_array.dtype)
print(float_array)
print(float_array.dtype)

# size of numpy array
# In numpy to know the number of the items in a numpy array list we use size

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
two_dimensional_list = np.array([[0, 1, 2],
                              [3, 4, 5],
                              [6, 7, 8]])

print('The size:', numpy_array_from_list.size) # 5
print('The size:', two_dimensional_list.size)  # 3

# MATHEMATICAL OPERATIONS USING NUMPY
 NumPy array is not like exactly like python list. To do mathematical operation in Python list we have to loop through the items but numpy can allow to do any mathematical operation without looping. Mathematical Operation:

# Addition (+)
# Subtraction (-)
# Multiplication (*)
# Division (/)
# Modules (%)
# Floor Division(//)
# Exponential(**)


# Addition

# Mathematical Operation

# Addition

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_plus_original = numpy_array_from_list  + 10
print(ten_plus_original)


# Subtraction

# Subtraction

çnumpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_minus_original = numpy_array_from_list  - 10
print(ten_minus_original)


# Multiplication

# Multiplication

çnumpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list * 10
print(ten_times_original)


# Division

# Division

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list / 10
print(ten_times_original)


# Modulus

# Modulus; Finding the remainder

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list % 3
print(ten_times_original)


# Floor Division

# Floor division: the division result without the remainder

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list // 10
print(ten_times_original)


# Exponential

# Exponential is finding some number the power of another:

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list  ** 2
print(ten_times_original)


# Checking data types

# Int,  Float numbers

numpy_int_arr = np.array([1,2,3,4])
numpy_float_arr = np.array([1.1, 2.0,3.2])
numpy_bool_arr = np.array([-3, -2, 0, 1,2,3], dtype='bool')

print(numpy_int_arr.dtype)
print(numpy_float_arr.dtype)
print(numpy_bool_arr.dtype)

# CONVERTING TYPES

# we can convert the data types into numpy arrays

# Int to Float

numpy_int_arr = np.array([1,2,3,4], dtype = "float")
print(numpy_int_arr)

# Float to Int

numpy_float_arr = np.array([1,2,3,5], dtype = "int")
print(numpy_float_arr)

# Int to a Boolean

print(np.array([1,2,3,4,0], dtype = "bool"))

# Int to str

numpy_float_arr.astype("float").astype("str")
print(numpy_float_arr, numpy_float_arr.dtype)

# MULTI-DIMENSIONAL ARRAYS

# 2 dimensional array

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
print(type(two_dimensional_array))
print(two_dimensional_array)
print("shape: ", two_dimensional_array.shape)
print("size: ", two_dimensional_array.size)
print("data type: ", two_dimensional_array.dtype)

# GETTING ITEMS FROM A NUMPY ARRAY

# 2 dimensional array

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
first_row = two_dimensional_array[0]
second_row = two_dimensional_array[1]
third_row = two_dimensional_array[2]

print('First row:', first_row)
print('Second row:', second_row)
print('Third row: ', third_row)


first_column= two_dimensional_array[:,0]
second_column = two_dimensional_array[:,1]
third_column = two_dimensional_array[:,2]
print('First column:', first_column)
print('Second column:', second_column)
print('Third column: ', third_column)
print(two_dimensional_array)


# SLICING NUMPY ARRAY

# Slicing in numpy is similar to slicing in python list

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
first_two_rows_and_columns = two_dimensional_array[0:2, 0:2]
print(first_two_rows_and_columns)

# How to reserve the rows and the whole array?

print(two_dimensional_array[::])

# Reverse the row and colums positions

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
print(two_dimensional_array[::-1,::-1])














#basics_python
