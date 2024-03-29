### Lists ###

#### Definición

```python

my_list = list()
my_other_list = []

print(len(my_list))

my_list = [35, 45, 65, 23, 12, 76, 98, 84]
print(my_list)
print(len(my_list))

my_other_list = [25, 1.80, "Armando", "Garcia"]
print(type(my_list))
print(type(my_other_list))

```

#### Acceso a elementos de busqueda

```python

print(my_other_list[0])
print(my_other_list[1])
print(my_other_list[-1])
print(my_other_list[-4])
print(my_list.count(2))

# print(my_other_list[4]) IndexError
# print(my_other_list[-5]) IndexError

print(my_other_list.index("Armando"))

age, height, name, surname = my_other_list
print(name)


name, height, age, surname = my_other_list[2], my_other_list[1], my_other_list[0], my_other_list[3]
print(age)

```

#### Concatenación

```python

print(my_list + my_other_list)
# print(my_list - my_other_list)

```

#### Creación, inserción, actualización y eliminación

```python

my_other_list.append("osiarap")
print(my_other_list)

my_other_list.insert(1, "Amarillo")
print(my_other_list)

my_other_list[1] = "Azul"
print(my_other_list)

my_other_list.remove("Azul")
print(my_other_list)

my_list.remove(98)
print(my_list)

print(my_list.pop())
print(my_list)

my_pop_element = my_list.pop(2)
print(my_pop_element)
print(my_list)

del my_list[2]
print(my_list)

```

#### Operaciones con listas

```python

my_new_list = my_list.copy()

my_list.clear()
print(my_list)
print(my_new_list)

my_new_list.reverse()
print(my_new_list)

my_new_list.sort()
print(my_new_list)

```

#### Sublistas

```python

print(my_new_list[1:3])

```

#### Cambio de tipo

```python

my_list = "Hola Python"
print(my_list)
print(type(my_list))

```

#basics_python
