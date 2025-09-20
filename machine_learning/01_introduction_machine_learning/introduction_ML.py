import numpy as np

x = np.array([[1,2,3],[4,5,6]])
print("x:\n{}".format(x))


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
