### Strings ###

```python

my_string = "Mi string"
my_other_string = "Mi otro String"

print(len(my_string))
print(len(my_other_string))
print(my_string + " " + my_other_string)

my_new_line_string = "Este es un String\ncon salto de línea"
print(my_new_line_string)

my_tab_string = "\tEste es un String con tabulación"
print(my_tab_string)
	
my_scape_string = "\\tEste es un String \\n escapado"
print(my_scape_string)

```

#### Formateo

```python

name, surname, age = "Armando", "Garcia", 25
print("Mi nombre es {} {} y mi edad es {}".format(name, surname, age))
print("Mi nombre es %s %s y mi edad es %d" % (name, surname, age))
print("Mi nombre es " + name + " " + surname + " y mi edad es " + str(age))
print(f"Mi nombre es {name} {surname} y mi edad es {age}")

```

#### Desempaqueado de caracteres

```python

language ="PYTHON"
a, b, c, d, e, f = language
print(a)
print(b)

```

#### División 

```python 

language_slice = language[1:3]
print(language_slice)

language_slice = language[1:]
print(language_slice)

language_slice = language[-2]
print(language_slice)

language_slice = language[0:6:2]
print(language_slice)

```

#### Reverse

```python

reversed_language = language[::-1]
print(reversed_language)

```

#### Funciones del lenguaje

```python

print(language.capitalize())
print(language.upper())
print(language.count("t"))
print(language.isnumeric())
print("1".isnumeric())
print(language.lower())
print(language.lower().isupper())
print(language.startswith("Py"))
print("Py" == "py")  # No es lo mismo

``` 

#basics_python
