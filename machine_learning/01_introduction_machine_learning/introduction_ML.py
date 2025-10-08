import numpy as np

x = np.array([[1,2,3],[4,5,6]])
print("x:\n{}".format(x))


from pandas._config import display
from scipy import sparse

# Create a 2D Numpy array with diagonal of ones, and zeros everywhere else

eye = np.eye(4)
print("\nNumPy array:\n", eye)

# Convert the Numpy array to Scipy sparse matrix in CSR format
# Only the nonzero entries are store

sparse_matrix = sparse.csr_matrix(eye)
print("\nSciPy sparse CSR matrix:\n",sparse_matrix)

data = np.ones(4)
row_indices = np.arange(4)
col_indices = np.arange(4)
eye_coo = sparse.coo_matrix((data, (row_indices, col_indices)))
print("\nCOO representation:\n", eye_coo)

import matplotlib.pyplot as plt

# GEnerate a sequence of numbers from -10 to 10 with 100 steps in between
x = np.linspace(-10, 10, 100)
# Create a second array using sine
y = np.sin(x)
# The plot function makes a line chart of one array against another
plt.plot(x, y, marker="x")
plt.savefig("plot.png", dpi=150, bbox_inches="tight")

import pandas as pd
from IPython.display import display

 #create asimple dataset of people
data = {'name': ["Maria", "Armando", "Alberto", "Lucas"],
        'Location': ["Dublin", "Dublin", "Malaga", "Barcelona"],
        'Age': [27, 26, 28, 29]
        }

data_pandas = pd.DataFrame(data)
# IPython.displays allows "pretty printing" of dataframes
# in the Jupyter notebook
display(data_pandas)

# Select all rows that have an age column greater than 26
display(data_pandas[data_pandas.Age > 26])

from sklearn.datasets import load_iris
iris_dataset = load_iris()

print("Keys of iris_dataset:\n", iris_dataset.keys())

print(iris_dataset['DESCR'][:193] + "\n...")

print("Target names:", iris_dataset['target_names'])

print("Feature names:\n", iris_dataset['feature_names'])

print("Type of data:", type(iris_dataset['data']))

print("shape of data:", iris_dataset['data'].shape)

print("first five rows of data:\n", iris_dataset['data'][:5])

print("Type of target:", type(iris_dataset['target']))

print("Shape of target:", iris_dataset['target'].shape)

print("Target:\n", iris_dataset['target'])



