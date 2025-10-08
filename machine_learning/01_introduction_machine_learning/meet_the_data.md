# Meet the data

- The data we will use for this example is the Iris dataset, a clasical dataset in machine learning and statistics.
- It is included in scikit-leran in *dataset* module (We can load it by calling the **load_iris** function):

```python

from sklearn.datasets import load_iris
iris_dataset = load_iris()
```

The iris object that is returned by **load_iris** is a bunch object. which is very similar to a dictionary. It contains keys and values.

```python

print("Keys of iris_dataset:\n", iris_dataset.keys())
```

[out]

```sh
Keys of iris_dataset:
 dict_keys(['data', 'target', 'frame', 'target_names', 'DESCR', 'feature_names', 'filename', 'data_module'])
```

The value of the key DESCR is a short description of the dataset.

```python

print(iris_dataset['DESCR'][:193] + "\n...")
```

[out]

```sh
Iris plants dataset
--------------------

**Data Set Characteristics:**

:Number of Instances: 150 (50 in each of three classes)
:Number of Attributes: 4 numeric, predictive
...
```

The value of the key **target_names** is an array of strings, containing the species of flower that we want to predict:

```python

print("Target names:", iris_dataset['target_names'])
```

[out]

```sh
Target names: ['setosa' 'versicolor' 'virginica']
```

The values of **feature_names** is a list of strings, giving the description of each feature:

```python

print("Feature names:\n", iris_dataset['feature_names'])
```

[out]

```sh
Feature names:
 ['sepal length (cm)', 'sepal width (cm)', 'petal length (cm)', 'petal width (cm)']
```

The data itself contained in the **target** and **data fields**. **data** contains the numeric measurements of sepal length, sepal width, petal length and petal width in a Numpy array:

```python

print("Type of data:", type(iris_dataset['data']))
```

[out]

```sh
Type of data: <class 'numpy.ndarray'>
```

The rows in the data array correspond to flowers, while the columns represent the four measurements that werte taken for each flower:

```python

print("shape of data:", iris_dataset['data'].shape)
```

[out]

```sh
shape of data: (150, 4)
```

We see that the array contains measurements for 150 different flowers. Remenber that the individual items are called *samples* in machine learning, and their properties are called *feature*. The *shape* of the data array is the number of samples times the number of features.This is a convention in **scikit-lerning**, and your data will always be assumed to be in this shape.

Here are the feature values for the first five samples.

```python

print("first five rows of data:\n", iris_dataset['data'][:5])
```

[out]

```sh
first five rows of data:
 [[5.1 3.5 1.4 0.2]
 [4.9 3.  1.4 0.2]
 [4.7 3.2 1.3 0.2]
 [4.6 3.1 1.5 0.2]
 [5.  3.6 1.4 0.2]]
```

From this data, we can see that all of the first five flowers have a petal width of 0.2 cm and that the first flowers has the longest sepal, at 5.1 cm.

The target array contains the species of each of the flowers that were measured, also as a Numpy array:

```python

print("Type of target:", type(iris_dataset['target']))
```

[out]

```sh
Type of target: <class 'numpy.ndarray'>
```

target is a one-dimensional array, with one entry per flower:

```python

print("Shape of target:", iris_dataset['target'].shape)
```

[out]

```sh
Shape of target: (150,)
```

The species are encoded as integers from 0 to 2:

```python

print("Target:\n", iris_dataset['target'])
```

[out]

```sh
Target:
 [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2
 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
 2 2]
```

The meaning of the numbers are given by the *iris['target_names']* array:
0 means *setosa*, 1 means *versicolor*, and 2 means *virginica*.
#first_exercice
