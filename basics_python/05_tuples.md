### Tuples ###

# Definición

my_tuple = tuple()
my_other_tuple = ()

my_tuple = (25, 1.80, "Armando", "Garcia", "Armando")
my_other_tuple = (25, 60, 35)

print(my_tuple)
print(type(my_tuple))

# Acceso a elementos y búsqueda

print(my_tuple[0])
print(my_tuple[-1])

print(my_tuple.count("Armando"))
print(my_tuple.index("Garcia"))
print(my_tuple.index("Armando"))

# my_tuple[1] = 1.80 'tuple' no soporta cambios. son inamobibles

# Concatenación 

my_sum_tuple = my_tuple + my_other_tuple
print(my_sum_tuple)

# Subtuplas

print(my_sum_tuple[3:6])

# Tupla mutable con conversión a lista

my_tuple = list(my_tuple)
print(type(my_tuple))

my_tuple[4] = "osiarap"
my_tuple.insert(1, "Azul")
my_tuple = tuple(my_tuple)
print(my_tuple)
print(type(my_tuple))

# Eliminación

# del my_tuple[2] no se puede eliminar elementos de un tuple

del my_tuple
print(my_tuple)











#basics_python
