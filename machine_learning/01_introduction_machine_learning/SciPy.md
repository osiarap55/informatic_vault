# Scipy

Scipy is a colleection of functions for scientific computing in Python.

- It provides, among other functionalit y, advanced linear algebra routines, mathematical function optimization, signal processing, special mathematical funcitons, and statistical distributions.

```python
import numpy as np
from scipy import sparse

# Create a 2D Numpy array with diagonal of ones, and zeros everywhere else

eye = np.eye(4)
print("NumPy array:\n", eye)


# Convert the Numpy array to Scipy sparse matrix in CSR format
# Only the nonzero entries are store

sparse_matrix = sparse.csr_matrix(eye)
print("\nSciPy sparse CSR matrix:\n",sparse_matrix)
```

- Usually it is not possible to create dense representations of sparse data (as they would not fit in the memory), so we need to create sparse representations directly.

```python

data = np.ones(4)
row_indices = np.arange(4)
col_indices = np.arange(4)
eye_coo = sparse.coo_matrix((data, (row_indices, col_indices)))
print("\nCOO representation:\n", eye_coo)
```

 #esential_libraries_and_tools
