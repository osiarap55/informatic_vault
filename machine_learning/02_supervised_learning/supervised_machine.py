import numpy as np
from pandas._config import display
from scipy import sparse
import matplotlib.pyplot as plt
import pandas as pd
from IPython.display import display
from sklearn.model_selection import train_test_split
import sys
import mglearn
from sklearn.neighbors import KNeighborsClassifier


# generate dataset

X, y = mglearn.datasets.make_forge()

# plot dataset

mglearn.discrete_scatter(X[:, 0], X[:, 1], y)
plt.legend(["Class 0", "Class 1"], loc=4)
plt.xlabel("First feature")
plt.ylabel("Second feature")
print("X.shape", X.shape)

plt.savefig("forge_plot.png")
plt.close()

X, y = mglearn.datasets.make_wave(n_samples=40)
plt.plot(X, y, 'o')
plt.ylim(-3, 3)
plt.xlabel("feature")
plt.ylabel("Target")

plt.savefig("wave_plot.png")
plt.close()

from sklearn.datasets import load_breast_cancer

cancer = load_breast_cancer()
print("cancer.keys():\n", cancer.keys())

print("shape of cancer data:", cancer.data.shape)

print("sample counts per class:\n",
      {n: v for n, v in zip(cancer.target_names, np.bincount(cancer.target))})

print("feature names:\n", cancer.feature_names)



from sklearn.preprocessing import PolynomialFeatures

def load_extend_boston(drop_first_two=True):
    # 1. Cargar datos crudos
    data_url = "http://lib.stat.cmu.edu/datasets/boston"
    raw_df = pd.read_csv(data_url, sep="\s+", skiprows=22, header=None)

    # 2. Extraer features y target
    data = np.hstack([raw_df.values[::2, :], raw_df.values[1::2, :2]])
    target = raw_df.values[1::2, 2]

    # 3. Opcional: eliminar las dos primeras filas
    if drop_first_two:
        data = data[2:]
        target = target[2:]

    print("Original data shape:", data.shape)   # (504, 13) o (506, 13)

    # 4. Generar características polinómicas
    poly = PolynomialFeatures(degree=2, include_bias=False)
    X_poly = poly.fit_transform(data)

    print("Polynomial features shape:", X_poly.shape)  # (504, 104) o (506, 104)

    return X_poly, target

# Prueba
X, y = load_extend_boston(drop_first_two=True)

mglearn.plots.plot_knn_classification(n_neighbors=1)

plt.savefig("forge_plot_k-nearest_neighbor.png")
plt.close()


mglearn.plots.plot_knn_classification(n_neighbors=3)


plt.savefig("forge_plot_3-nearest_neighbor.png")
plt.close()

from sklearn.model_selection import train_test_split
X, y = mglearn.datasets.make_forge()

X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0)

from sklearn.neighbors import KNeighborsClassifier
clf = KNeighborsClassifier(n_neighbors=3)

clf.fit(X_train, y_train)

print("Test set predictions:", clf.predict(X_test))

print("Test set acuracy: {:.2f}".format(clf.score(X_test, y_test)))

fig, axes = plt.subplots(1, 3, figsize=(10, 3))

for n_neighbors, ax in zip([1, 3, 9], axes):
    # the fit method returns the object self, so we can instantiate
    # and fit in one line
    clf = KNeighborsClassifier(n_neighbors=n_neighbors).fit(X, y)
    mglearn.plots.plot_2d_separator(clf, X, fill=True, eps=0.5, ax=ax, alpha=.4)
    mglearn.discrete_scatter(X[:, 0], X[:, 1], y, ax=ax)
    ax.set_title("{} neighbor(s)".format(n_neighbors))
    ax.set_xlabel("feature 0")
    ax.set_ylabel("feature 1")
axes[0].legend(loc=3)

plt.savefig("different_values_n_neighbors.png")
plt.close()

from sklearn.datasets import load_breast_cancer

cancer = load_breast_cancer()
X_train, X_test, y_train, y_test = train_test_split(
    cancer.data,  cancer.target, stratify=cancer.target, random_state=66)

training_accuaracy = []
test_accuracy = []
# try n_neighbors from 1 to 10
neighbors_settings = range(1, 11)

for n_neighbors in neighbors_settings:
    clf = KNeighborsClassifier(n_neighbors=n_neighbors)
    clf.fit(X_train, y_train)
    # record training set test_accuracy
    training_accuaracy.append(clf.score(X_train, y_train))
    # record generalization accuracy
    test_accuracy.append(clf.score(X_test, y_test))

plt.plot(neighbors_settings, training_accuaracy, label="training accuracy")
plt.plot(neighbors_settings, test_accuracy, label="test accuracy")
plt.ylabel("Accuracy")
plt.xlabel("n_neighbors")
plt.legend()

plt.savefig("comparation_training_test.png")
plt.close()
