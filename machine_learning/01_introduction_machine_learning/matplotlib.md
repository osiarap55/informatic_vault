# MAtplotlib

MAtplotlib is the primary scientific plotting library in Python.

- It provides functions for making publication-quality visualizations such as line charts, histograms, scatter plots, and so on.

```Python

import matplotlib.pyplot as plt

# GEnerate a sequence of numbers from -10 to 10 with 100 steps in between
x = np.linspace(-10, 10, 100)
# Create a second array using sine
y = np.sin(x)
# The plot function makes a line chart of one array against another
plt.plot(x, y, marker="x")
plt.savefig("plot.png", dpi=150, bbox_inches="tight")
```

![plot](informatic_vault/machine_learning/01_introduction_machine_learning/plot.png)

 #esential_libraries_and_tools
