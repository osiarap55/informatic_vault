### Sets ###

# Definición 

my_set = set()
my_other_set = {}

print(type(my_set))
print(type(my_other_set)) # inicialmente es un directorio

my_other_set = {"Armando", "Garcia", 25}
print(type(my_other_set))

print(len(my_other_set))

# Insercción

my_other_set.add("osiarap67")

print(my_other_set)  # Un set no es una estructura ordenada

my_other_set.add("osiarap67")  # Un set no admite repetidos

print(my_other_set)

# Búsqueda

print("Armando" in my_other_set)
print("armando" in my_other_set)

# Eliminación

my_other_set.remove("Armando")
print(my_other_set)

my_other_set.clear()
print(len(my_other_set))

del my_other_set

# Transformación

my_set = {"Armando", "Garcia", 25}
my_list = list(my_set)
print(my_list)
print(my_list[0])

my_other_set = {"Python", "C#", "Cobol"}

# Otras operaciones

my_new_set = my_set.union(my_other_set)
print(my_new_set.union(my_new_set).union(my_set).union({"JavaScript", "C#"}))  # En resumen, la línea anterior crea un conjunto que contiene todos los elementos únicos de my_set, my_other_set, JavaScript y C#.
print(my_new_set.difference(my_set))  # En este caso, imprime los elementos que están en my_new_set pero no en my_set.



#basics_python
