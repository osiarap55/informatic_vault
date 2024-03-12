### Functions ###

# Definición

def my_function():
    print("Esto es una funcion")

my_function()
my_function()
my_function()

# Funcion con parametros de entradad/argumentos

def sum_two_values(first_value: int, second_value):
    print(first_value + second_value)

sum_two_values(5, 7)
sum_two_values(3525, 25920)
sum_two_values("5", "7")
sum_two_values(1.4, 5.2)
sum_two_values("Armando", " Garcia")

# Función con parámetros de entrada/argumentos y retorno

def sum_two_values_with_return(first_value, second_value):
    my_sum = first_value + second_value
    return my_sum

my_result = sum_two_values_with_return(1.4, 5.2)
print(my_result)

my_result = sum_two_values_with_return(10, 5)
print(my_result)


# Función con parámetros de entrada/argumento por clave

def print_name_with_default(name, surname, alias="Sin alias"):
    print(f"{name} {surname} {alias}")

print_name_with_default("armando", "garcia")
print_name_with_default("armando", "garcia", "osiarap")


# Función con parámetros de entrada/argumentos arbitrarios

def print_upper_texts(*texts):
    print(type(texts))
    for text in texts:
        print(text.upper())

print_upper_texts("Hola", "Python", "osiarap67")
print_upper_texts("Hola")







#basics_python
