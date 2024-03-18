### STATISTICS

Statistics is the discipline that studies the collection, organization, displaying, analysing, interpretation and presentation of data. Statistics is a branch of Mathematics that is recommended to be a prerequisite for data science and machine learning. Statistics is a very broad field but we will focus in this section only on the most relevant part. After completing this challenge, you may go onto the web development, data analysis, machine learning and data science path. Whatever path you may follow, at some point in your career you will get data which you may work on. Having some statistical knowledge will help you to make decisions based on data, data tells as they say.

### DATA

 * What is data? Data is any set of characters that is gathered and translated for some purpose, usually analysis. It can be any character, including text and numbers, pictures, sound, or video. If data is not put in a context, it doesn't make any sense to a human or computer. To make sense from data we need to work on the data using different tools.

 * The work flow of data analysis, data science or machine learning starts from data. Data can be provided from some data source or it can be created. There are structured and unstructured data.

 * Data can be found in small or big format. Most of the data types we will get have been covered in the file handling section.

### STATISTICS MODULES

 * The Python statistics module provides functions for calculating mathematical statistics of numerical data. The module is not intended to be a competitor to third-party libraries such as NumPy, SciPy, or proprietary full-featured statistics packages aimed at professional statisticians such as Minitab, SAS and Matlab. It is aimed at the level of graphing and scientific calculators.

### NUMPY

 * NumPy is the core library for scientific computing in Python. It provides a high-performance multidimensional array object, and tools for working with arrays.

### IMPORTING NUMPY

```python

import numpy as np

print("numpy:", np.__version__)

```

#### check the available of methods

```python

print(dir(np))

```
### CREATING NUMPY ARRAYS

#### creating int numpy arrays

```python

python_list = [1, 2, 3, 4, 5]

print("Type:", type (python_list))
print(python_list)

two_dimensional_list = [[0, 1, 2], [2, 3, 4], [5, 6, 7]]
print(two_dimensional_list)

```

#### creating Numpy(numerical python) array from python list

```python

numpy_array_from_list = np.array(python_list)
print(type (numpy_array_from_list))
print(numpy_array_from_list)

```

#### creating float numpy arrays

creating a float numpy array from list with a float data type parameter

```python

python_list = [1, 2, 3, 4, 5]

numpy_array_from_list2 = np.array(python_list, dtype=float)
print(numpy_array_from_list2)

```

#### creating boolean numpy arrays

creating a boolean a numpy array from list

```python

numpy_bool_array = np.array([0, 1, -1, 0, 0], dtype=bool)

print(numpy_bool_array)

```

#### creating multidimensional array using numpy

A numpy array may have one or multiple rows and columns

```python

two_dimensional_list = [[0,1,2],[3,4,5],[6,7,8]]
numpy_two_dimensional_list = np.array(two_dimensional_list)
print(type(numpy_two_dimensional_list))
print(numpy_two_dimensional_list)

```

#### converting numpy array to a list

```python

# we can always convert an array back to a python list using tolist().

np_to_list = numpy_array_from_list.tolist()
print(type(np_to_list))
print("one dimensional array:", np_to_list)
print("two dimensional arrays:", numpy_two_dimensional_list.tolist())

```

#### creating numpy array from tuple 

numpy array tuple

creating tuple in python 

```python

python_tuple = (1,2,3,4,5)
print(type(python_tuple))
print("python_tuple:", python_tuple)

numpy_array_from_tuple = np.array(python_tuple)
print(type(numpy_array_from_tuple))
print("numpy_array_from_tuple", numpy_array_from_tuple)

```

#### Shape of numpy array

The shape method provide the shape of the array as a tuple. The first is the row and the second is the column. If the array is just one dimensional it returns the size of the array.

```python

nums = np.array([1, 2, 3, 4, 5])
print(nums)
print("shape of nums:", nums.shape)
print(numpy_two_dimensional_list)
print("shape of two dimensional lsit:", numpy_two_dimensional_list.shape)
three_by_four_array = np.array([[0,1,2,3], [4,5,6,7], [8,9,10,11]])
print(three_by_four_array.shape)

```

#### data type of numpy array

type of data types: str, int, float, complex, bool, list, none

```python

int_lists = [-3, -2, -1, 0, 1, 2,3]
int_array = np.array(int_lists)
float_array = np.array(int_lists, dtype=float)

print(int_array)
print(int_array.dtype)
print(float_array)
print(float_array.dtype)

```

#### size of numpy array

In numpy to know the number of the items in a numpy array list we use size

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
two_dimensional_list = np.array([[0, 1, 2],
                              [3, 4, 5],
                              [6, 7, 8]])

print('The size:', numpy_array_from_list.size) # 5
print('The size:', two_dimensional_list.size)  # 3

```

### MATHEMATICAL OPERATIONS USING NUMPY

NumPy array is not like exactly like python list. To do mathematical operation in Python list we have to loop through the items but numpy can allow to do any mathematical operation without looping. Mathematical Operation:

 * Addition (+)
 * Subtraction (-)
 * Multiplication (*)
 * Division (/)
 * Modules (%)
 * Floor Division(//)
 * Exponential(**)

### Mathematical Operation

#### Addition

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_plus_original = numpy_array_from_list  + 10
print(ten_plus_original)

```

#### Subtraction

```python

çnumpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_minus_original = numpy_array_from_list  - 10
print(ten_minus_original)

```

#### Multiplication

```python

çnumpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list * 10
print(ten_times_original)

```

#### Division

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list / 10
print(ten_times_original)

```

#### Modulus

 * Modulus; Finding the remainder

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list % 3
print(ten_times_original)

```

#### Floor Division

 * Floor division: the division result without the remainder

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list // 10
print(ten_times_original)

```

#### Exponential

 * Exponential is finding some number the power of another:

```python

numpy_array_from_list = np.array([1, 2, 3, 4, 5])
print('original array: ', numpy_array_from_list)
ten_times_original = numpy_array_from_list  ** 2
print(ten_times_original)

```

#### Checking data types

 * Int,  Float numbers

```python

numpy_int_arr = np.array([1,2,3,4])
numpy_float_arr = np.array([1.1, 2.0,3.2])
numpy_bool_arr = np.array([-3, -2, 0, 1,2,3], dtype='bool')

print(numpy_int_arr.dtype)
print(numpy_float_arr.dtype)
print(numpy_bool_arr.dtype)

```

### CONVERTING TYPES

 * we can convert the data types into numpy arrays

#### Int to Float

```python

numpy_int_arr = np.array([1,2,3,4], dtype = "float")
print(numpy_int_arr)

```

#### Float to Int

```python

numpy_float_arr = np.array([1,2,3,5], dtype = "int")
print(numpy_float_arr)

```

#### Int to a Boolean

```python

print(np.array([1,2,3,4,0], dtype = "bool"))

```

#### Int to str

```python

numpy_float_arr.astype("float").astype("str")
print(numpy_float_arr, numpy_float_arr.dtype)

```

### MULTI-DIMENSIONAL ARRAYS

#### 2 dimensional array

```python

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
print(type(two_dimensional_array))
print(two_dimensional_array)
print("shape: ", two_dimensional_array.shape)
print("size: ", two_dimensional_array.size)
print("data type: ", two_dimensional_array.dtype)

```

### GETTING ITEMS FROM A NUMPY ARRAY

#### 2 dimensional array

```python

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

```

### SLICING NUMPY ARRAY

#### Slicing in numpy is similar to slicing in python list

```python

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
first_two_rows_and_columns = two_dimensional_array[0:2, 0:2]
print(first_two_rows_and_columns)

```

#### How to reserve the rows and the whole array?

```python

print(two_dimensional_array[::])

```

#### Reverse the row and colums positions

```python

two_dimensional_array = np.array([(1,2,3),(4,5,6),(7,8,9)])
print(two_dimensional_array[::-1,::-1])

```

#### How to represent missing values?

```python

print(two_dimensional_array)
two_dimensional_array[1,1] = 55
two_dimensional_array[1,2] = 44
print(two_dimensional_array)

```

#### Numpy Zeros

```python

numpy_zeros = np.zeros((3,3), dtype=int, order="C")
print(numpy_zeros)

```

#### Numpy ones

```python

numpy_ones = np.ones((3,3), dtype=int, order="C")
print(numpy_ones)

twoes = numpy_ones * 2
print(twoes)

```

### Reshape

```python

numpy.reshape(), numpy.flatten()

first_shape = np.array([(1,2,3),(4,5,6)])
print(first_shape)
reshaped = first_shape.reshape(3,2)
print(reshaped)

flattened = reshaped.flatten()
print(flattened)

```

#### Horizontal Stack

```python

np_list_one = np.array([1,2,3])
np_list_two = np.array([4,5,6])

print(np_list_one + np_list_two)

print("Horizontal Append:", np.hstack((np_list_one, np_list_two)))

```

#### Vertical Stack

```python

print("Vertical Stack:", np.vstack((np_list_one, np_list_two)))

```

### Generating Rando Numbers

#### Generating a ramdon float number

```python

random_float = np.random.random()
print(random_float)


random_float = np.random.random(5)
print(random_float)

```

#### Generating a random integers between 0 and 10

```python

random_int = np.random.randint(0,11)
print(random_int)

```

#### Generating a random integers between 2 and 11. and creating a one row array

```python

random_int = np.random.randint(2,10, size=4)
print(random_int)

```

#### Generating a random integers between 0 and 10 in a matrix 3 x 3

```python

random_int = np.random.randint(2,10, size=(3,3))
print(random_int)

```

### Generating random numbers

#### np.random.normal(mu, sigma, size)

```python

normal_array = np.random.normal(79, 15, 80)
print(normal_array)

```

### Numpy and Statistics 

```python

import matplotlib.pyplot as plt
import seaborn as sns
sns.set()
print(plt.hist(normal_array, color="grey", bins=50))

```

#### Matrix Numpy

```python

four_by_four_matriz = np.matrix(np.ones((4,4), dtype=float))
print(four_by_four_matriz)

```

#### editing the matrix

```python

np.asarray(four_by_four_matriz)[2] = 2
print(four_by_four_matriz)

```

### Numpy numpy.arange()

##### What is Arrange?

 * Sometimes, you want to create values that are evenly sapaces within a defined inervales. For intances, you want to create values form 1 to 10; you can use numpy.arange() function

#### creating list unsing range(starting, stop, step)

```python

lst = range(0, 11, 2)
print(lst)

for l in lst:
    print(l)

```

#### similar to range arange numpy.arange(start, stop, step)

```python

whole_numbers = np.arange(0, 14, 2)
print(whole_numbers)

natural_numbers = np.arange(1, 25, 1)
print(natural_numbers)

odd_numbers = np.arange(1, 25, 2)
print(odd_numbers)

even_numbers = np.arange(2, 25, 2)
print(even_numbers)

```

### Creating sequences of numbers using linspace

 * numpy.linspace()
 
 * numpy.logspace() in Python with Example
 
 * For instance, it can be used to create 10 values from 1 to 5 evenly spaced.

```python

array_lisnpace = np.linspace(1.0, 5.0, num=10)
print(array_lisnpace)

```

#### not include the last value in the interval

```python

array_lisnpace = np.linspace(1.0, 5.0, num=10, endpoint=False)
print(array_lisnpace)

```

#### LogSpace

 * LogSpace returns even spaced numbers on a log scale. LogSpace hs the same parameters as np.linspace
 
 * logspace means logaritmo in base 10

```python

array_logspace = np.logspace(2, 4.0, num=14)
print(array_logspace)

```

#### to check the size of an array

```python

x = np.array([1,2,3], dtype=complex)
print(x)
print(x.itemsize)

```

#### indexing and slicing numpy arrays in python

```python

np_lsit = np.array([(1,2,4), (4,6,9)])
print(np_lsit)

print("first row:", np_lsit[0])
print("second row:", np_lsit[1])

print("first colums:", np_lsit[:,0])
print("second colums:", np_lsit[:,1])
print("first thirs:", np_lsit[:,2])

```

### Numpy Statistics Functions with Example

 * NumPy has quite useful statistical functions for finding minimum, maximum, mean, median, percentile,standard deviation and variance, etc from the given elements in the array. The functions are explained as follows − Statistical function Numpy is equipped with the robust statistical function as listed below

#### Numpy Functions

 * Min np.min()
 * Max np.max()
 * Mean np.mean()
 * Median np.median()
 * Varience
 * Percentile
 * Standard deviation np.std()

```python

np_normal_dis = np.random.normal(5, 0.5, 100)
print(np_normal_dis)

print("min: ", two_dimensional_array.min())
print("max: ", two_dimensional_array.max())
print("mean: ", two_dimensional_array.mean())
# print("median: ", two_dimensional_array.median())
print("sd: ", two_dimensional_array.std())

print(two_dimensional_array)
print("Column with minimum: ", np.amin(two_dimensional_array,axis=0))
print("Column with maximum: ", np.amax(two_dimensional_array,axis=0))
print("---------- ROW ------------")
print("Row with minimun: ", np.amin(two_dimensional_array,axis=1))
print("Row with maximum: ", np.amax(two_dimensional_array,axis=1))

```

### How to create repeating sequences?

```python

a = [1, 2, 3]

```

#### Repeat whole of 'a' two times

```python

print("tile: ", np.tile(a, 2))

```

#### Repeat each element of 'a' two times

```python

print("Repeat: ", np.repeat(a, 2))

```

### How to generate random numbers?

#### One random number between [0, 1]

```python

one_random_num = np.random.random()
# one_random_in = np.random
print(one_random_num)

```

#### Random numbers between [0, 1] of shape 2,3

```python

r = np.random.random(size=[2,3])
print(r)

```

#### letters or number random orders with different shape

```python

print(np.random.choice(["a", "e", "i", "o", "u"], size=10))

```

#### Random numbers between [0, 1] of shape 2, 2

 * example 1

```python

rand = np.random.rand(2,2)
print(rand)

```

* example 2 with positive and negative numbers

```python

rand2 = np.random.randn(2,2)
print(rand2)

```

#### Random integers between [0, 10] of shape 2, 5

```python

rand_int = np.random.randint(0, 10, size=[5,3])
print(rand_int)

```

#### spicy module

```python

from scipy import stats

np_normal_dis = np.random.normal(5, 0.5, 1000) # mean , standard deviation, number of samples
print(np_normal_dis)

print('min: ', np.min(np_normal_dis))
print('max: ', np.max(np_normal_dis))
print('mean: ', np.mean(np_normal_dis))
print('median: ', np.median(np_normal_dis))
print('mode: ', stats.mode(np_normal_dis))
print('sd: ', np.std(np_normal_dis))

```

#### now,  we plot with hist all data

```python

plt.hist(np_normal_dis, color="grey", bins=21)
# plt.show()
# not working well

```

### Linear Algebra

 * numpy.dot(): Dot Product in Python using Numpy
 * Dot Product
 * Numpy is powerful library for matrices computation. For instance, you can compute the dot product with np.dot

#### Syntax

 * numpy.dot(x, y, out=None)

#### product of two arrays

```python

f = np.array([1,2,3])
g = np.array([4,5,6])

# 1*4 + 2*5 + 3*6
print(np.dot(f, g))

```

#### NumPy Matrix Multiplication with np.matmul()

```python

h = [[1,2],[3,4]]
i = [[5,6],[7,8]]

# 1*5+2*7 = 19
print(np.matmul(h, i))

```

#### Determinat of 2*2 matrix

```python

determinant = np.linalg.det(i)
print(determinant)

```

#### Example of the potencial

```python
Z = np.zeros((8,8))

Z[1::2,::2] = 1
Z[::2,1::2] = 1
print(Z)

```

#### Example 2

```python

new_list = [x + 2 for x in range (0, 11)]
print(new_list)

```

#### we use linear equation for quantities which have linear relationship. Let's see the example below:

```python

temp = np.array([1,2,3,4,5])
pressure = temp * 2 + 5
print(pressure)

plt.plot(temp,pressure)
plt.xlabel('Temperature in oC')
plt.ylabel('Pressure in atm')
plt.title('Temperature vs Pressure')
plt.xticks(np.arange(0, 6, step=0.5))
plt.show()

```

#### Gaussian Example

 * To draw the Gaussian normal distribution using numpy. As you can see below, the numpy can generate random numbers. To create random sample, we need the mean(mu), sigma(standard deviation), mumber of data points.

```python

mu = 28
sigma = 15
samples = 10000

x = np.random.normal(mu, sigma, samples)
ax = sns.histplot(x);
ax.set(xlabel="x", ylabel="y")
plt.show()

```

#basics_python
