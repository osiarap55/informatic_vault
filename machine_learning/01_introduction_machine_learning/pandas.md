# PAndas

- Pandas is a python library for data wrangling and analysis. It us built around a data estructure called the **DataFrame** that is modeled after the **R DataFrame**.

- Pandas provides a great range of methods to modify and operate on tables.

- Pandas allows each column to have a separate type, for example:
  - integers, dates, floating-point numbers and strings.

- Another valuable tool that **Pandas** provides is its ability to ingest form a great variaty of files formats and data bases, like SQL, Exel files, and comma-separeated values (CVS) files.

```python
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
```

 #esential_libraries_and_tools

[[24_pandas.md]]
