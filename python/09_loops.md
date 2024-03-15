### Loops ###

#### While

```python

my_condition = 0

while my_condition < 10:
    print(my_condition)
    my_condition += 2
else:   # Es opcional
    print("Mi condicion es mayor o igual que 10")

print("La ejecución continua")

while my_condition < 20:
    my_condition += 1
    if my_condition == 15:
        print("se detiene la ejecución")
        break
    print(my_condition)

print("La ejecucion continúa")

print("________________________")

```

#### For

```python

my_list = [23, 45, 24, 24, 56, 98, 23]

for element in my_list:
    print(element)
print("________________________")

my_tuple = (25, 1.80, "Armando", "Garcia", "osiarap67")

for element in my_tuple:
    print(element)

print("________________________")

my_set = {"Garcia", "Armadno", 25}

for element in my_set:
    print(element)

print("________________________")

my_dict = {"Nombre": "Armadno", "Apellido": "Garcia", "Edad": 25, 1: "Python"}

for element in my_dict:
    print(element)
    if element == "Edad":
        break
else:
    print("El bucle for para diccionario ha finalizado")

print("La ejecución continúa")

print("________________________")

for element in my_dict:
    print(element)
    if element == "Edad":
        continue
    print("Se ejecuta")
else:
    print("El bucle para diccionario ha finalizado")

```

#basics_python
