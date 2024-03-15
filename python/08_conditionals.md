### Conditionals ###

#### if

```python

my_condition = False

if my_condition: # Es lo mismo qie if my_condition == True
    print("Se ejecuta la condicion del if")

my_condition = 5 * 5

if my_condition == 10:
    print("Se ejecuta la condicion del segundo if")

```

#### if, elif, else

```python

if my_condition > 10 and my_condition < 20:
    print("Es mayor que 10 y menor que 20")
elif my_condition == 25:
    print("Es igual a 25")
else:
    print("Es menor o igual que 10 o mayor o igual que 20 o distinto de 25")

print("la ejecución continúa")

```

#### Condicional con ispección de valor

```python

my_string = ""

if not my_string:
    print("Mi cadena de texto es vacia")

if my_string == "Mi cadena de texto":
    print("Estas cadenas coinciden")

```

#basics_python
