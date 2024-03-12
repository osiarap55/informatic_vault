# So far we have seen different Python data types. we usually store our data in different file formats. In addition to handling files, we will also see different file formats(.txt, .json, .xml, .csv, .tsv, .excel) in this section. First, let us get familiar with handling files with common file format(.txt).
# File handling is an import part of programming which allows us to create, read, update and delete files. In Python to handle data we use open() built-in function.

# Syntax
# open("filename", mode) # mode(r, a, w, x, t, b) could be to read, write, update.

#    "r" - Read - Default value. Opens a file for reading, it returns an error if the file does not exist
#    "a" - Append - Opens a file for appending, creates the file if it does not exist
#    "w" - Write - Opens a file for writing, creates the file if it does not exist
#    "x" - Create - Creates the specified file, returns an error if the file exists
#    "t" - Text - Default value. Text mode
#    "b" - Binary - Binary mode (e.g. images)

# OPENING FILES FOR READING

# The default mode of open is reading, so we do not have to apecify "r" or "rt". I have created and saved a file named reading_file_example.txt in the files directory. Let us see how it is done:

f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
print(f)

# As you can see in the example above, I printed the opened file and it gaves some information about it. Opened file has to be closed with close() method.

# read(): read the whole text as string. If we want to limit the number of characters we want to read, we can limit it by passing int value to the read(number) method.

f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
txt = f.read()
print(type(txt))
print(txt)
f.close()

# instead of printing all the text, let us print the first 10 characters of the text file.

f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
txt = f.read(10)
print(type(txt))
print(txt)
f.close()

# readline(): read only the first line

f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
line = f.readline()
print(type(line))
print(line)
f.close()

# readlines(): read all the text line by line and returns a list of lines

f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
lines = f.readlines()
print(type(lines))
print(lines)
f.close()

# Another way to get all the lines as a list is using splitlines():
f = open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt")
lines = f.read().splitlines()
print(type(lines))
print(lines)
f.close()

# After we open a file, we should close it. There is a high tendency of forgettinf to close them. There is a new way of openning files using with-closes the files by itself. Let us rewrite the previous example with the with method:

with open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt") as f:
    lines = f.read().splitlines()
    print(type(lines))
    print(lines)

# OPENING FILES FOR WRITTING AND UPDATING

# To write to an existing file, we must add a mode as parameter to the open() function:
#"a" - append - will append to the end of the file, if the file does not it creates a new file.
#"w" - write - will overwrite any existing content, if the file does not exist it creates.

# Let us append some text to the file we have been reading:

with open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.1_example.txt", "a") as f:
    f.write("Este texto tiene que ser añadido alfinal")

# The method below vreates a new file, if the file does not exist:

with open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.2_example.txt", "w") as f:
    f.write("Este texto sera escrito en un nuevo documento si no existe")

# DELETING FILES

# We have seen in previous section, how to make and remove a directory using module. Again now, if we want to remove a file use os module.

import os
os.remove("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.2_example.txt")

# IF the file does not exist, the remove method will raise an error, so it is goof to use a condition like this:

import os
if os.path.exists("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.2_example.txt"):
    os.remove("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.2_example.txt")
else:
    print("El fichero no existe")

# FILES TYPES:

# File with txt Extension
# File with txt extension is a very common form of data and we have covered it in the previous section. Let us move to the JSON file

# File with json Extension
# JSON stands for JavaScript Object Notation. Actually, it is a stringified JavaScript object or Python dictionary.

# Example

# dictionary
person_dct= {
    "name":"Asabeneh",
    "country":"Finland",
    "city":"Helsinki",
    "skills":["JavaScrip", "React","Python"]
}
# JSON: A string form a dictionary
person_json = "{'name': 'Asabeneh', 'country': 'Finland', 'city': 'Helsinki', 'skills': ['JavaScrip', 'React', 'Python']}"

# we use three quotes and make it multiple line to make it more readable
person_json = '''{
    "name":"Asabeneh",
    "country":"Finland",
    "city":"Helsinki",
    "skills":["JavaScrip", "React","Python"]
}'''

# CHANGING JSON TO DICTIONARY

# To change a JSON to a dictionary, first we import the json module and then we use loads method.

import json
# JSON
person_json = '''{
    "name":"Asabeneh",
    "country":"Finland",
    "city":"Helsinki",
    "skills":["JavaScrip", "React","Python"]
}'''
# let's change to JSON to dictionary
person_dct = json.loads(person_json)
print(type(person_dct))
print(person_dct)
print(person_dct["name"])

# CHANGING DICTIONARY TO JSON

import json

person = {
    "name":"Asabeneh",
    "country":"Finland",
    "city":"Helsinki",
    "skills":["JavaScrip", "React","Python"]
}
# let's convert it to json
person_json = json.dumps(person, indent=4) # indent could be 2, 4, 8. It beautifies the json
print(type(person_json))
print(person_json)

# SAVING AS JSON FILE

# We can also save our data as a json file. Let us save it as a json file using the following steps. For writing a json file, we use the json.dump() method, it can take dictionary, output file, ensure_ascii and indent.

import json

person = {
    "name":"Asabeneh",
    "country":"Finland",
    "city":"Helsinki",
    "skills":["JavaScrip", "React","Python"]
}
with open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.2_json_example.json", "w", encoding="utf-8") as f:
    json.dump(person, f, ensure_ascii=False, indent=4)

# In the code above, we use encoding and indentation. Indentation makes the json file easy to read.

# FILE WITH CSV EXTENSION

# CSV stands for comma separated values. CSV is a simple file format used to store tabular data, such as a spreadsheet or database. CSV is a very common data format in data science.

# Exmaple:

# "name","country","city","skills"
# "Asabeneh","Finland","Helsinki","JavaScript"

# Example:

import csv
with open("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.3_csv_example.csv") as f:
    csv_reader = csv.reader(f, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print(f'column names are :{",".join(row)}')
            line_count += 1
        else:
            print(
                f"\t{row[0]} is a teachers. He lives in {row[1]}, {row[2]}.")
            line_count += 1
    print(f"Number of lines: {line_count}")

# FILE WITH XLSX EXTENSION

# To read excel files we need to install xlrd package. We will cover this after we cover package installing using pip.

import xlrd
excel_book = xlrd.open_workbook("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.4_xlsx_example.xls")
print(excel_book.nsheets)
print(excel_book.sheet_names)

# no funciona y no se porque

# FILE WITH XML EXTENSION

# XML is another structured data format which looks like HTML. In XML the tags are not predefined. The first line is an XML declaration. The person tag is the root of the XML. The person has a gender attribute. Example:XML

import xml.etree.ElementTree as ET
tree = ET.parse("/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newcours/18.5_xml_example.xml")
root = tree.getroot()
print("Root tag:", root.tag)
print("Attribute:", root.attrib)
for child in root:
    print("field:", child.tag)

print(input("tu nombre:"))
#basics_python
