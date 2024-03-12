# Variables 

my_string_variable = "My String variable"
print(my_string_variable)

my_int_variable = 5 
print(my_int_variable)

my_int_str_variable = str(my_int_variable)
print(my_int_str_variable)
print(type(my_int_str_variable))

my_bool_variable = False
print(my_bool_variable)

# Concatenación de variables en un print
print(my_string_variable, my_int_variable, my_bool_variable)
print("Este es el valor de:", my_bool_variable)

# Algunas Funciones del sistemas
print(len(my_string_variable))

# Variables en una sola linea
name, surname, alias, age = "Armando", "Garcia", "osiarap", 25
print("Me llamo:", name, surname, ". Mi edad es:", age, ". Y mi alias es:", alias)

name = input("¿Cual es tu nombre? ")
age = input("¿Cuantos años tienes? ")
print(name)
print(age)

# Cambiamos su tipo
name = 25
age = "armando"
print(name)
print(age)

# ¿Forzamos el tipo?
address: str = "mi direccion"
address = True
address = 5
address = 1,2
print(type(address))
print(address[2])
#basics_python
