# python is an object oriented programming language. Everything in python is an object, eith its properties and methods.
# A number, string, list, dictionary, tuple, set, etc.
# used in a program is and object correponding built-in class. 
# We created c,ass to create an object.
# A class is like and object constructor, or a "blueprint" for creating objects. 
# We instantiate a class to create an object. 
# The class defines attributes and the behavior of the object, while the object, on the other hand, represent the class.
# Every element in a Python program is an object of a class. 


# CREATING A CLASS
# syntax 
# class Classname:
#    code goes here


# Example:

class Person:
    pass
print(Person)

# CREATING AN OBJECT
# We can create an object by calling the class

p = Person()
print(p)

# CLASS CONSTRUCTOR
# In the examples above, we created an object form the Person class. However, a class without a constructor is not really useful in real applications.
# Let us use constructor function to make our class more useful. Like the constructor function in Java or JavaScript, Python has also a built-in init() constructor function. 
# The init constructor function has self parameter which is a reference to the current instance of the class

# Example
class person:
    def __init__ (self, name):
        # self allows to attach parameter to the class
            self.name = name

p = person("Armando")
print(p.name)
print(p)

# Let us add more parameters to the constructor function.

class person_1:
    def __init__(self, firstname, lastname, age, country, city):
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city

p = person_1("Armando", "Garcia", "25", "Spain", "Malaga")
print(p.firstname)
print(p.lastname)
print(p.age)
print(p.country)
print(p.city)

# OBJECT METHODS

# Object can have methods. The methods are functions which belong to the object.
# Example

class person_2:
    def __init__(self, firstname, lastname, age, country, city):
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city
    def person_info(self):
        return f"{self.firstname} {self.lastname} is {self.age} years old. He is from {self.country}, {self.city}."

p = person_2("Armando", "Garcia", "25", "Spain", "Malaga")
print(p.person_info())

# OBJECT DEFAULT METHODS
# Sometimes, you may want to have a default values for object methods. If we give default values for the parameters in the constructor, we can avoid errors when we call or instantiate our class without parameters. Let's see how it looks:


class person_3:
    def __init__(self, firstname="Armando", lastname="Garcia", age=25, country="Spain", city="Malaga"):
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city
    def person_info_1(self):
        return f"{self.firstname} {self.lastname} is {self.age} years old. He is from {self.country}, {self.city}."

p1 = person_3()
print(p1.person_info_1())
p2 = person_3("Lucas", "Vignola", 27, "Uruguay", "Montevideo")

print(p2.person_info_1())


# METHOD TO MODIFY CLASS DEFAULT VALUES

# In the example below, the person class, all the constructor parameters have default values. In addition to that, we have skills parameter, which we can access using a method.
# Let us create add_skil mthod to ass skills to the skills list.

class person_4:
    def __init__(self, firstname="Armando", lastname="Garcia", age=25, country="Spain", city="Malaga"):
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city
        self.skills = []
    def person_info_2(self):
        return f"{self.firstname} {self.lastname} is {self.age} years old. He is from {self.country}, {self.city}."
    def add_skill(self, skill):
        self.skills.append(skill)

p1 = person_4()
print(p1.person_info_2())
p1.add_skill("Bash_script")
p1.add_skill("Python")
p1.add_skill("linux")
p2 = person_4("Lucas", "Vignola", 27, "Uruguay", "Montevideo")
print(p2.person_info_2())
p2.add_skill("no skills")
print(p1.skills)
print(p2.skills)

# INHERITANCE

# Using inheritance we can reuse parent class code. 
# Inheritance allowa ua to define a class that inherits all the methods and properties from parent class. 
# The parent class or super or base class is the class which gives allt eh methods and properties. 
# Child class is the class that inherits from another ot parent class.

class Student(person_4):
    pass

s1 = Student("Alberto", "Robles", 26, "Ukraine", "Kiev")
s2 = Student("Maria", "Rodriguez", 26, "Spain", "Malaga")
print(s1.person_info_2())
s1.add_skill("Journalist")
s1.add_skill("sports")
s1.add_skill("poker")
print(s1.skills)

print(s2.person_info_2())
s2.add_skill('Organizing')
s2.add_skill('Marketing')
s2.add_skill('Digital Marketing')
print(s2.skills)

# we didn't call the init() constructor in the child class. 
# If we didn't call it then we can still acces all the properties from the parent.
# But if we do call the constructor we can acces the parent properties by calling super.
# We can add a new method to the child or we can override the parent class methods by creating the same method name in the child class.
# When we add the init() function, the child class will no longer inherit the parent's init() function.

# OVERRIDING PARENT METHOD

class Student_(person_4):
    def __init__(self, firstname="Armando", lastname="Garcia", age=25, country="Spain", city="Malaga", gender="male"):
        self.gender = gender
        super().__init__(firstname, lastname, age, country, city)
    def person_info_2(self):
        gender = "He" if self.gender == "male" else "she"
        return f"{self.firstname} {self.lastname} is {self.age} years old. {gender} lives in {self.country}, {self.city}."

s1 = Student_("Alberto", "Robles", 26, "Ukraine", "Kiev", "male")
s2 = Student_("Maria", "Rodriguez", 26, "Spain", "Malaga", "female")
print(s1.person_info_2())
s1.add_skill("Journalist")
s1.add_skill("sports")
s1.add_skill("poker")
print(s1.skills)

print(s2.person_info_2())
s2.add_skill('Organizing')
s2.add_skill('Marketing')
s2.add_skill('Digital Marketing')
print(s2.skills)

# We can use super() built-in function or the parent name Person to automatically inherit the methods and properties from its parent. 
# In the example above we override the parent method. 
# The child method has a different feature, it can identify, if the gender is male or female and assign the proper pronoun(He/She).

#basics_python
