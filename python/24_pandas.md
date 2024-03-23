## Pandas

#### ¿What is Pandas?

Pandas is an open source, high-performance, easy-to-use data structures and data analysis tools for the Python programming language. Pandas adds data structures and tools designed to work with table-like data which is *series* and *data frames*. Pandas provide tools for data manipulation:

 * reshaping
 * merging
 * sorting
 * slicing
 * aggregation
 * imputation. If you are using anaconda, you don't have to install pandas


### Instaling panda

```sh

pip install conda
pip install pandas

```

Pandas data structure is based on *series* and *data frames*

A **series** is a *column* and a **data frame** is a *multidimensional table* made up of collection of **series**. In order to create a pandas series we should use numpy to create a one dimensional arrays or a python list.

Let us see ans example of a **series**:

 * Names Pandas Series

|     |     | Names   |     |
| --- | --- | ------- | --- |
|     | 0   | Armando |     |
|     | 1   | Maria   |     |
|     | 2   | Lucas   |     |


* Countries Series

|     |     | Country |     |
| --- | --- | ------- | --- |
|     | 0   | Spain   |     |
|     | 1   | Ireland |     |
|     | 2   | France  |     |


 * Cities Series

|     |     | cities |     |
| --- | --- | ------ | --- |
|     | 0   | Malaga |     |
|     | 1   | Dublin |     |
|     | 2   | Gap    |     |

 * As you can see, pandas series is just one column of data. If we want to have multiple columns we use data frames. The example below shows pandas Dataframes.

Let us see, an example of pandas data frame:

|   | Names   | Country | cities | 
| - | ------- | ------- | ------ |
| 0 | Armando | Spain   | Malaga |
| 1 | Maria   | Ireland | Dublin |
| 2 | Lucas   | France  | Gap    |


* Data frame is a collection of rows and columns. Look at the table below; it has many more columns than the example above:

|   | Names   | Country | cities | Weight | Height | 
| - | ------- | ------- | ------ | ------ | ------ |
| 0 | Armando | Spain   | Malaga | 75     | 180    |
| 1 | Maria   | Ireland | Dublin | 54     | 162    |
| 2 | Lucas   | France  | Gap    | 68     | 176    |


 * Next, we will see how to import pandas and how to create Series and DAtaframes using pandas

### Pandas Series

#### Import Pandas

```python

import pandas as pd
import numpy as np

```

#### Creating Pandas Series with Default Index

```python

nums = [1, 2, 3, 4, 5]
s = pd.Series(nums)
print(s)

```

#### Creating Panas Series with custom Index

```python

nums = [1, 2, 3, 4, 5]
s = pd.Series(nums, index=[1, 2, 3, 4, 5])
print(s)

fruits = ["Orange", "strawberrys", "bananas"]
fruits = pd.Series(fruits, index=[1, 2, 3])
print(fruits)

```

#### Creating Pandas Series from dicctionary

```python

dct = {"name": "Armando", "country": "Spain", "City": "Malaga"}

s = pd.Series(dct)
print(s)

```

#### Creating a Constant Pandas Series

```python

s = pd.Series(10, index = [1, 2, 3])
print(s)

```

#### Creating a Pandas Series Using Linspace

```python

s = pd.Series(np.linspace(5, 20, 10))
print(s)


```

### DataFrames

Pandas data frames can be created in different ways.

#### Creating Dataframes from List of Lists

```python

data = [
    ["Armando", "Spain", "malaga"],
    ["Maria", "Ireland", "Dublin"],
    ["lucas", "France", "Gap"]
]
df = pd.DataFrame(data, columns=["Names", "Country", "city"])
print(df)

```

#### Creating DataFrames Using Dictionary

```python

data = {"Name": ["Armadno", "Maria", "lucas"], "country": [
    "Spain", "Ireland", "France"], "City": ["Malaga", "Dublin", "Gap"]
    }
df = pd.DataFrame(data)
print(df)

```

#### Creating DataFrames from a List of Dictionaries

```python

data = [
    {'Name': 'Armando', 'Country': 'Spain', 'City': 'Malaga'},
    {'Name': 'Maria', 'Country': 'Ireland', 'City': 'Dublin'},
    {'Name': 'Lucas', 'Country': 'France', 'City': 'Gap'}]

df = pd.DataFrame(data)
print(df)

```

### Reading CSV File Using Pandas

To dowload the CSV file, what is needed in this example, console/command line is enough:

```sh

curl -O https://raw.githubusercontent.com/Asabeneh/30-Days-Of-Python/master/data/weight-height.csv

```

Put the dowload file in your working directory.

```python

import pandas as pd

df = pd.read_csv("weight-height.csv")
print(df)

```

#### Data Exploration

Let us read only the first 5 rows using head()

```python

print(df.head())

```

Let us also explore the last recording of the dataframe using tail()

```python

print(df.tail())

```

As you can see the csv file has three columns: Gender, Height and Weight. If the Data frame would have longer rows it would be hard to know how many columns there are. Therefore, we use **shape** method to know the columns there are.

```python

print(df.shape)

```

Let us get all the columns using columns.

```python

print(df.columns)

```

Now, let us get a specific column using the column key

```python

heights = df["Height"]
print(heights)

weights = df["Weight"]
print(weights)

```

Let's chechk if the column height and the column weight has the same number of rows.

```python

print(len(heights) == len(weights))

```

The describe() method provides a descriptive statistical values of a dataset.

```python

print(heights.describe())
# give statistical information about heights

print(weights.describe())
# give statistical information about weights

print(df.describe())
# give statistical information about the dataframe

```

Similar to describe(), the info() methos also give information about the dataset.

### Modifying a DataFrame

#### Modifying a Dataframe:
 
 * We can create a new DataFrame
 * We can create a new column and add it to the DataFrame
 * We can remove an existing column from a DataFrame
 * We can modify an existing column in a DataFrame
 * We can change the data type of column values in the DataFrame

#### Creating a DataFrame

As always, first we import the necessary packages. Pandas and Numpys working perfectly together.

```python

import pandas as pd
import numpy as np
data = [
    {'Name': 'Armando', 'Country': 'Spain', 'City': 'Malaga'},
    {'Name': 'Maria', 'Country': 'Ireland', 'City': 'Dublin'},
    {'Name': 'Lucas', 'Country': 'France', 'City': 'Gap'}]
df = pd.DataFrame(data)
print(df)

```

#### Adding a New Column

Adding a column to a DataFrame is like adding a key to a dictionay
Let's add a weight column in the DataFrame

```python

weights = [75, 54, 68]
df["weight"] = weights
print(df)

```

Let's add a height column in the DAtaFrame

```python

heights = [180, 162, 176]
df["height"] = heights
print(df)

```

#### Modifyng colums values

Let's add one additional column called BMI(Body mass Index) by calculating their BMI using their mass and height.# Let's change height to meters so we can do the calculation

```python

df["height"] = df["height"] * 0.01
print(df)

# Doing a function to calculate the BMI, makes our code cleaner.
def calculate_bmi ():
    weights = df["weight"]
    heights = df["height"]
    bmi = []
    for w,h in zip(weights, heights):
        b = w/(h*h)
        bmi.append(b)
    return bmi
bmi = calculate_bmi()

# now we add it to the DataFrame
df["BMI"] = bmi
print(df)

```

#### Formating DataFrame columns

The BMI column values of  the DataFrame are float with many significant digits after decimal. Let's change it to one significant digit after point.

```python

df["BMI"] = round(df["BMI"], 1)
print(df)

```

The information in the DataFrame seems not yet complete, let's add bith year and current year columns

```python

birth_year = ["1998", "1998", "1996"]
current_year = pd.Series(2024, index=[0, 1, 2])
df["Birth Year"] = birth_year
df["Current Year"] = current_year
print(df)

```

### Checking data types of Column values

```python

print(df.weight.dtype)

print(df["Birth Year"].dtype)

```

It gives string object, we should change this to a number

```python

df["Birth Year"] = df["Birth Year"].astype("int")
print(df["Birth Year"].dtype)

 
df["Current Year"] = df["Current Year"].astype("int")
print(df["Current Year"].dtype)

```

Now we can calculate the age as bith year and current year are integers

```python

ages = df["Current Year"] - df["Birth Year"]
print(ages)

```

and add it to the Data Frame

```python

df["Ages"] = ages
print(df)

```

#### Boolean Indexing

```python

print(df[df["Ages"] > 26])

print(df[df["Ages"] < 27])

```

#basics_python
#modules 
[[pandas]]
