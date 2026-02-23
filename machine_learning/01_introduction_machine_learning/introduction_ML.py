import numpy as np

x = np.array([[1, 2, 3], [4, 5, 6]])
print("x:\n{}".format(x))


from pandas._config import display
from scipy import sparse

# Create a 2D Numpy array with diagonal of ones, and zeros everywhere else

eye = np.eye(4)
print("\nNumPy array:\n", eye)

# Convert the Numpy array to Scipy sparse matrix in CSR format
# Only the nonzero entries are store

sparse_matrix = sparse.csr_matrix(eye)
print("\nSciPy sparse CSR matrix:\n", sparse_matrix)

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

# create asimple dataset of people
data = {
    "name": ["Maria", "Armando", "Alberto", "Lucas"],
    "Location": ["Dublin", "Dublin", "Malaga", "Barcelona"],
    "Age": [27, 26, 28, 29],
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

print(iris_dataset["DESCR"][:193] + "\n...")

print("Target names:", iris_dataset["target_names"])

print("Feature names:\n", iris_dataset["feature_names"])

print("Type of data:", type(iris_dataset["data"]))

print("shape of data:", iris_dataset["data"].shape)

print("first five rows of data:\n", iris_dataset["data"][:5])

print("Type of target:", type(iris_dataset["target"]))

print("Shape of target:", iris_dataset["target"].shape)

print("Target:\n", iris_dataset["target"])

from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(
    iris_dataset["data"], iris_dataset["target"], random_state=0
)

print("X_train shape:", X_train.shape)
print("y_train shapes:", y_train.shape)

print("X_test shape:", X_test.shape)
print("y_test shape:", y_test.shape)

import sys
import mglearn

# create dataframe from data in x_train
# label the colums using the strings in iris_dataset.feature_names
iris_dataframe = pd.DataFrame(X_train, columns=iris_dataset.feature_names)
# create a scatter matrix from the dataframe, color by y_train
pd.plotting.scatter_matrix(iris_dataframe, c=y_train, figsize=(15, 15),
                           marker='o', hist_kwds={'bins': 20}, s=60,
                           alpha=.8, cmap=mglearn.cm3
)
plt.savefig("scatter_matrix.png", dpi=150, bbox_inches="tight")
plt.close()

from sklearn.neighbors import KNeighborsClassifier

knn = KNeighborsClassifier(n_neighbors=1)

knn.fit(X_train, y_train)

print(knn.get_params())

X_new = np.array([[5, 2.9, 1, 0.2]])
print("X_new.shape:", X_new.shape)


prediction = knn.predict(X_new)
print("prediction:", prediction)
print("Predicted target name:",
      iris_dataset['target_names'][prediction])

y_pred = knn.predict(X_test)
print("Test set predictions:\n", y_pred)

print("Test set score: {:.2f}".format(np.mean(y_pred == y_test)))

print("Test set score: {:.2f}".format(knn.score(X_test, y_test)))
