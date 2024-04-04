## Python with MongoDB

 * Pyhon is a backend technology and it can be connected with different data base applications.
 
 * It can be connected to both SQL and noSQL database.

 * In this section we connect Python with MongoDB database which is noSQL database

### MongoDB

What is MongoDB database?

 * MongoDB is a noSQL database.

 * MongoDB store data in a JSON like document which make MongoDB very flexible and scalable

#### Let's see the differents between SQL and noSQL database

| SQL         | NoSQL                |
|-------------|----------------------|
| Database    | Database             |
| Tables      | Collections          |
| Rows        | Documents            | 
| Columns     | Fields               |
| Index       |  Index               |
| Join        | Embedding and liking |
| Group by    | Agregation           |
| Primary Key | _id field            |

 * In this section we will focus on NoSQL database MongoDB.

#### Lets follow the setps to sign up and connect to our database throw MongoDB.

 1.- Let's sign up on [mongoDB](https://account.mongodb.com/account/register)
 2.- Complete the fields and click continue
 3.- Select the free plan
 4.- Choose the proximate free region and give any name for you cluster (treintadiaspython)
 5.- Now, a free sandbox is created
 6.- All local host access
 7.- Add user and password
 8.- Create a mongoDB uri link
 9.- Select Python 3.6 or above driver


### Getting Conection String(MongoDB URI)

 * copy the connection string and you will get something like this

```

mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/

```

 * Python needs a mongoDB driver to access mongoDB database. We will use pymongo with dnspython to connect our application with mongoDB base . Inside your project directory install pymongo and dnspython.

```sh

pip install pymongo dnspython

```

The "dnspython" module must be installed to use mongodb+srv:// URIs. The dnspython is a DNS toolkit for Python. It supports almost all record types.

### Connecting Flask application to MongoDB cluster

```python

let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)
print(client.list_database_names())

app = Flask(__name__)
if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))
	app.run(debug=True, host='0.0.0.0', port=port)

```

when we run the code above we get the default mongoDB database

```sh

['admin','local']

```

### Creating a database and collection

Let us create a database, database and collection in mongoDB will created if it doesn't exist. Let's create a data base name *treita_dias_python* and *students* collection. 

#### To create a database, the are two ways:

```
db = client.name_of_the_database
db = client['name_of_database']

```
```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)
#creating database
db = client.treinta_dias_python
#creating students collection and inserting document
db.students.insert_one({"name": "Armando", "country": "Spain", "city": "Malaga", "age": 25})

print(client.list_database_names())

app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

After we create a database, we also created a students collection and we use insert_one() method to insert a document. Check your mongoDB cluster and you will see both the database and the collection.

The document has been created with loong id which acts as primary key. Every time we create a document mongoDB create and unique id for it.

### Inserting many documents to collection

The *insert_one()* method insert one item at a time, if we want to insert many documents at once either we use *insert_many()* method or for loop. We can use for loop to insert many documents at once.

```python

from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning::<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

db = client.treinta_dias_python2

students = [
        {"name": "Maria", "country": "Ireland", "city": "Dublin", "age": 26},
        {"name": "Lucas", "country": "France", "city": "Gap", "age": 27},
        {"name": "Vanesaa", "country": "Venezuela", "city": "Caracas", "age": 31},
        ]

for student in students:
    db.students.insert_one(student)


print(client.list_database_names())

app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

### MongoDB Find

The *find()* and *find_one()* methods are common method to find data in a collection in mongoDB database. It is similar to the **SELECT** statement in a MYSQL database. Let us *find_one()* method to get a document in a database collection.

 * Gets the first occurrence if an id is not provided.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
student = db.students.find_one()
print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```
{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}

```

Let's do an example using and id to get a specific object.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
from bson.objectid import ObjectId
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
student = db.students.find_one({'_id':ObjectId('6606f95fd9b4688459d30f14')})
print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

we have seen how to use *find_one()*, now let's use the *find()*

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
students = db.students.find()
for student in students:
    print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{"_id":{"$oid":"6606f95fd9b4688459d30f13"},"name":"Maria","country":"Ireland","city":"Dublin","age":{"$numberInt":"26"}}
{"_id":{"$oid":"6606f95fd9b4688459d30f14"},"name":"Lucas","country":"France","city":"Gap","age":{"$numberInt":"27"}}
{"_id":{"$oid":"6606f95fd9b4688459d30f15"},"name":"Vanesaa","country":"Venezuela","city":"Caracas","age":{"$numberInt":"31"}}

```

We can specify which fields to return by passing second object in the *find({},{})*. (o means not include and 1 means include but we can not mix 0 and 1, except for_id).

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
students = db.students.find({},{"_id":0, "name":1, "country":1})
for student in students:
    print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{"name":"Maria","country":"Ireland","city":"Dublin"}
{"name":"Lucas","country":"France","city":"Gap"}
{"name":"Vanesaa","country":"Venezuela","city"}

```


### Find with Query

In mongoDB find take a query object. We can pass a querry object and we can filter documents we like to filter out.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]

query = {
        "country":"Ireland"
    }
students = db.students.find(query)

for student in students:
    print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}

```

### Find Query with modifier

```python

from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]

query = {
        "country":"Ireland",
        "city":"Dublin"
    }
students = db.students.find(query)

for student in students:
    print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}

```

Query with modifiers (only people more than 25 years)

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
query = {"age":{"$gt":25}}
students = db.students.find(query)
for student in students:
    print(student)


app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}
{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f15'), 'name': 'Vanesaa', 'country': 'Venezuela', 'city': 'Caracas', 'age': 31}

```

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

#accesing a database
db = client["treinta_dias_python2"]
query = {"age":{"$gt":25}}
students = db.students.find(query)
for student in students:
    print(student)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}
{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f15'), 'name': 'Vanesaa', 'country': 'Venezuela', 'city': 'Caracas', 'age': 31}

```

### Limiting documents

We can limit the number of documents we return using *limit()* method.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

db = client["treinta_dias_python2"]
query = {"age":{"$gt":25}}
db.students.find().limit(3)


```

### Find with sort

By default, sort is in ascending order. We can change the sorting to descending by adding -1 parameter.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)

db = client["treinta_dias_python2"]
students = db.students.find().sort('name')
for student in students:
    print(student)


students = db.students.find().sort('name',-1)
for student in students:
    print(student)

students = db.students.find().sort('age')
for student in students:
    print(student)

students = db.students.find().sort('age',-1)
for student in students:
    print(student)

app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```


Ascending order

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}
{'_id': ObjectId('6606f95fd9b4688459d30f15'), 'name': 'Vanesaa', 'country': 'Venezuela', 'city': 'Caracas', 'age': 31}

```

Descending order

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f15'), 'name': 'Vanesaa', 'country': 'Venezuela', 'city': 'Caracas', 'age': 31}
{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 26}
{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}

```

### Update with query

We will *update_one()* method to update one item. It takes two object, one is a query and the second is the new object. Let's update the "ages" of Maria

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)
db = client["treinta_dias_python2"]

query = {"age":26}
new_value = {"$set":{"age":27}}

db.students.update_one(query, new_value)

for student in db.students.find():
    print(student)

app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f15'), 'name': 'Vanesaa', 'country': 'Venezuela', 'city': 'Caracas', 'age': 31}

```

When we want to update many documents at once we use *update_many()* method.

### Delete Documents

The method *delete_one()* deletes one document. The *delete_one()* takes a query object parameter. It only removes the first occurence. Let us remove one Vanesaa from the collection

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)
db = client["treinta_dias_python2"]

query = {"name":"Vanesaa"}

db.students.delete_one(query)

for student in db.students.find():
    print(student)

app = Flask(__name__)
if __name__ == '__main__':
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host='0.0.0.0', port=port)

```

```sh

{'_id': ObjectId('6606f95fd9b4688459d30f13'), 'name': 'Maria', 'country': 'Ireland', 'city': 'Dublin', 'age': 27}
{'_id': ObjectId('6606f95fd9b4688459d30f14'), 'name': 'Lucas', 'country': 'France', 'city': 'Gap', 'age': 27}

```

As you can see Vanesaa has been removed from the collection.

When we want to delete many documents we use *delete_many()* method, it takes a query object. If we pass an empty query object to *delete_many({})* it will delete all the documents in the collection.


### Drop a collection

Using the *drop()* method we can delete a collection from database.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module
import pymongo 

MONGODB_URI = 'mongodb+srv://islandrainning:<password>@treintadiaspython.qf7vqjs.mongodb.net/'
client = pymongo.MongoClient(MONGODB_URI)
db = client["treinta_dias_python2"]
db.students.drop()

```

Now, we have deleted the students collection from the database.

#basics_python
#frameworks

