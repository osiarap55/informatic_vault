### Dictionaries ###

# Definición

my_dict = dict()
my_other_dict = {}

print(type(my_dict))
print(type(my_other_dict))

my_other_dict = {"Nombre": "Armando",
                    "Apellido": "Garcia", "Edad": 25, 1: "Python"}

my_dict = {
        "Nombre": "Armando",
        "Apellido": "Garcia",
        "Edad": 25,
        "Lenguajes": {"Python", "C++", "html"},
        1: 1.80
}

print(my_other_dict)
print(my_dict)

print(len(my_other_dict))
print(len(my_dict))

# Búsqueda

print(my_dict[1])
print(my_dict["Nombre"])

print("Garcia" in my_dict)
print("Apellido" in my_dict)

# Inserción

my_dict["Calle"] = "Princesa Irene"
print(my_dict)

# Actualixación

my_dict["Nombre"] = "Alberto"
print(my_dict["Nombre"])

# Eliminación 

del my_dict["Calle"]
print(my_dict)

# Otras operaciones

print(my_dict.items())
print(my_dict.keys())
print(my_dict.values())

my_list = ["Nombre", 1, "Piso"]

my_new_dict = dict.fromkeys((my_list))
print(my_new_dict)
my_new_dict = dict.fromkeys(("Nombre", 1, "Piso"))
print((my_new_dict))
my_new_dict = dict.fromkeys(my_dict)
print((my_new_dict))
my_new_dict = dict.fromkeys(my_dict, "osiarap67")
print((my_new_dict))

my_values = my_new_dict.values()
print(type(my_values))

print(my_new_dict.values())
print(list(dict.fromkeys(list(my_new_dict.values())).keys()))  # En resumen, el propósito de esta línea de código es eliminar duplicados de los valores en el diccionario my_new_dict y mostrar una lista de los valores únicos. Este código utiliza un enfoque de utilizar un diccionario temporal para eliminar duplicados y luego convierte las claves de ese diccionario en una lista.
print(tuple(my_new_dict))
print(set(my_new_dict))



#basics_python
