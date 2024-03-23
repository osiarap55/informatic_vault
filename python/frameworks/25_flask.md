****## Python for Web

Python is a general purpose programming language and it can be used as a frontend and backend. In this section, we will sww how qw use Python form web. There are many Python web frame works. Django and Flask are the most popular ones. Today, we will see how to use Flask for web development.

### Flask

Flask is a web development framework wirttin in Python. Flask uses Jinja 2 template engine. Flask can be also used with other modern front libraries such as React.

If you did not install the virtualenv package yet install it first. Virtueal enviarinment will allows to isolate project dependencies from local machine dependencies.

#### Folder structure

 * After completing all chapter, your project file structure should look like this:



```sh

├── Procfile
├── app.py
├── env
│   ├── bin
├── requirements.txt
├── static
│   └── css
│       └── main.css
└── templates
    ├── about.html
    ├── home.html
    ├── layout.html
    ├── post.html
    └── result.html
```

### Settting up yout project directory

Follow the following steps to get started with Flask.


 * Step 1: Install virtualenv 

```sh

pip install virtualenv

```

 * Step 2: 

```sh

➜  newstaff (main) mkdir python_for_web                                                                         
➜  newstaff (main) cd python_for_web                                                                            
➜  python_for_web (main) virtualenv venv                                                                        
created virtual environment CPython3.10.12.final.0-64 in 433ms
  creator CPython3Posix(dest=/home/paradiseland86/Documentos/Topicos/INFORMATICA/Python_info/newstaff/python_for_web/venv, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, wheel=bundle, via=copy, app_data_dir=/home/paradiseland86/.local/share/virtualenv)
    added seed packages: pip==24.0, setuptools==69.1.1, wheel==0.42.0
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
➜  python_for_web (main) source venv/bin/activate                                                               
(venv) ➜  python_for_web (main) pip freeze                                                                      
(venv) ➜  python_for_web (main) pip install Flask                                                               
Collecting Flask
  Using cached flask-3.0.2-py3-none-any.whl.metadata (3.6 kB)
Collecting Werkzeug>=3.0.0 (from Flask)
  Using cached werkzeug-3.0.1-py3-none-any.whl.metadata (4.1 kB)
Collecting Jinja2>=3.1.2 (from Flask)
  Using cached Jinja2-3.1.3-py3-none-any.whl.metadata (3.3 kB)
Collecting itsdangerous>=2.1.2 (from Flask)
  Using cached itsdangerous-2.1.2-py3-none-any.whl.metadata (2.9 kB)
Collecting click>=8.1.3 (from Flask)
  Using cached click-8.1.7-py3-none-any.whl.metadata (3.0 kB)
Collecting blinker>=1.6.2 (from Flask)
  Using cached blinker-1.7.0-py3-none-any.whl.metadata (1.9 kB)
Collecting MarkupSafe>=2.0 (from Jinja2>=3.1.2->Flask)
  Using cached MarkupSafe-2.1.5-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (3.0 kB)
Using cached flask-3.0.2-py3-none-any.whl (101 kB)
Using cached blinker-1.7.0-py3-none-any.whl (13 kB)
Using cached click-8.1.7-py3-none-any.whl (97 kB)
Using cached itsdangerous-2.1.2-py3-none-any.whl (15 kB)
Using cached Jinja2-3.1.3-py3-none-any.whl (133 kB)
Using cached werkzeug-3.0.1-py3-none-any.whl (226 kB)
Using cached MarkupSafe-2.1.5-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
Installing collected packages: MarkupSafe, itsdangerous, click, blinker, Werkzeug, Jinja2, Flask
Successfully installed Flask-3.0.2 Jinja2-3.1.3 MarkupSafe-2.1.5 Werkzeug-3.0.1 blinker-1.7.0 click-8.1.7 itsdangerous-2.1.2
(venv) ➜  python_for_web (main) pip freeze                                                                      
blinker==1.7.0
click==8.1.7
Flask==3.0.2
itsdangerous==2.1.2
Jinja2==3.1.3
MarkupSafe==2.1.5
Werkzeug==3.0.1
(venv) ➜  python_for_web (main)

```

We created a project directory named python_for_web.

Now, let's create app.py file in the project directory and write the following code. The app.py file will be the main file in the project. The following code has flask module, os module.

### Creating routes

The module route

```python

# let's import the flask
from flask import Flask
import os # importing operating system module

app = Flask(__name__)

@app.route("/") # this decorator create the home route
def home ():
    return "<h1>Welcome<h1>"

@app.route("/aboute")
def about ():
    return "<h1>About us<h1>"

if __name__ == "__main__":
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host="0.0.0.0", port=port)

```

To run the flask application, write python app.py in the main flask application directory.

After you run python app.py check local host 5000.

```sh

➜  ~  lsof -i :5000
COMMAND   PID           USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
python3 11428 paradiseland86    3u  IPv4  79437      0t0  TCP *:5000 (LISTEN)
python3 11429 paradiseland86    3u  IPv4  79437      0t0  TCP *:5000 (LISTEN)
python3 11429 paradiseland86    4u  IPv4  79437      0t0  TCP *:5000 (LISTEN)


```

How about if we watn to render an HTML file instead of string? It is possible to render HTML file using the function renderV_template.

 * Let us create a folder called templates and create home.html and about.html in the project directory. 

 * Let us also import the render_template function from flask

### Creating templates

Create the HTML files inside templates folder.

```sh

(venv) ➜  python_for_web (main) mkdir templates
(venv) ➜  python_for_web (main) cd templates                                                                    
(venv) ➜  templates (main) touch home.html about.html                                                           
(venv) ➜  templates (main) ls                                                                                   
about.html  home.html
(venv) ➜  templates (main)

```

#### home.html

```html

<!DOCTYPE html>
<html lang="en">
        <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Home</title>
        </head>

        <body>
                <h1>Welcome Home</h1>
        </body>
</html>

```

#### about.html

```html

<!DOCTYPE html>
<html lang="en">
        <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>About</title>
        </head>

        <body>
                <h1>About us</h1>
        </body>
</html>

```

### Python Script

Now we add the render_template function.

```python

# let's import the flask
from flask import Flask, render_template
import os # importing operating system module

app = Flask(__name__)

@app.route("/") # this decorator create the home route
def home ():
    return render_template("home.html")

@app.route("/aboute")
def about ():
    return render_template("about.html")

if __name__ == "__main__":
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host="0.0.0.0", port=port)

```

Let us crete additional page which handle from data. 
I will call it post.html

We can inject data to the HTML files using Jinja2 template engine.

```python

# let's import the flask
from flask import Flask, render_template, request, redirect, url_for
import os # importing operating system module

app = Flask(__name__)

@app.route("/") # this decorator create the home route
def home():
    techs = ["HTML", "CSS", "Flask", "Python"]
    return render_template("home.html", techs = techs, name = name, title = "Home")

@app.route("/aboute")
def about():
    name = "Treinta dias de python"
    return render_template("about.html", name = name, title = "About us")

@app.route("/post")
def post():
    name = "Text Analyzer"
    return render_template("post.html", name = name, title = name)


if __name__ == "__main__":
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host="0.0.0.0", port=port)

```

#### Navigation

Let's add a link to each page or let's create a layout which we use to every page.

```html

<ul>
    <li><a href="/">Home</a></li> 
    <li><a href="/about">About</a></li> 
</ul>

```

#### Let's see the templates too:

home.html

```html


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home</title>
    </head>

    <body>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/about">About</a></li>
        </ul>
        <h1>Welcome Home</h1>
        <ul>
        {% for tech in techs %}
            
            <li>{{tech}}</li>
        {% endfor %}
        </ul>
    </body>
</html>

```

about.html

```html

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>About</title>
    </head>

    <body>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/about">About</a></li>
        </ul>
        <h1>About us</h1>
        <h2>{{name}}</h2>
    </body>
</html>

```

### Creating a layout

 * In the template files, there are lots of repeated codes, we can write a layout and we can remove the repetition. 
 * Let's create layout.hmtl inside the template folder.'
 
 * After we create the layout we will import to every file

#### Serving Static File

 * Create a static folder in yout project directory. Inside the static folder create CSS ot styles folder abd create a CSS stylesheet.

 * We use the url_for module to server the static file

layout.html

```html

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:300,400|Nunito:300,400|Raleway:300,400,500&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="{{ url_for('static', filename='css/main.css') }}"
    />
    {% if title %}
    <title>30 Days of Python - {{ title}}</title>
    {% else %}
    <title>30 Days of Python</title>
    {% endif %}
  </head>

  <body>
    <header>
      <div class="menu-container">
        <div>
          <a class="brand-name nav-link" href="/">30DaysOfPython</a>
        </div>
        <ul class="nav-lists">
          <li class="nav-list">
            <a class="nav-link active" href="{{ url_for('home') }}">Home</a>
          </li>
          <li class="nav-list">
            <a class="nav-link active" href="{{ url_for('about') }}">About</a>
          </li>
          <li class="nav-list">
            <a class="nav-link active" href="{{ url_for('post') }}"
              >Text Analyzer</a
            >
          </li>
        </ul>
      </div>
    </header>
    <main>
      {% block content %} {% endblock %}
    </main>
  </body>
</html>

```

Now, lets remove all the repeated code in home, about and post remplate files and import from the layout.hmtl.The href is using url_for function with the name of the route function to connect each navigation route.

home.html

```html

{% extends 'layout.html' %} {% block content %}
<div class="container">
  <h1>Text Analyzer</h1>
  <form action="https://thirtydaysofpython-v1.herokuapp.com/post" method="POST">
    <div>
      <textarea rows="25" name="content" autofocus></textarea>
    </div>
    <div>
      <input type="submit" class="btn" value="Process Text" />
    </div>
  </form>
</div>

{% endblock %}

```

about.html

```html

{% extends 'layout.html' %} {% block content %}
<div class="container">
  <h1>About {{name}}</h1>
  <p>
    This is a 30 days of python programming challenge. If you have been coding
    this far, you are awesome. Congratulations for the job well done!
  </p>
</div>
{% endblock %}

```

post.html

```html

{% extends 'layout.html' %} {% block content %}
<div class="container">
  <h1>Text Analyzer</h1>
  <form action="https://thirtydaysofpython-v1.herokuapp.com/post" method="POST">
    <div>
      <textarea rows="25" name="content" autofocus></textarea>
    </div>
    <div>
      <input type="submit" class="btn" value="Process Text" />
    </div>
  </form>
</div>

{% endblock %}

```

Request methods, there are different request methods(GET, POST, PUT, DELETE) are the common request methods which allow us to do CRUD (Create, Read, Update, Delete) operation.

In the post, route we will use GET and POST method alternative depending on the type of request.

 * The request method is a function to handle request mothods and also to access from data.

app.py

```python

# let's import the flask
from flask import Flask, render_template, request, redirect, url_for
import os # importing operating system module

app = Flask(__name__)
# to stop caching static file
app.config["SEND_FILE_MAX_AGE_DEFAULT"] = 0



@app.route("/") # this decorator create the home route
def home():
    techs = ["HTML", "CSS", "Flask", "Python"]
    name = "Treinta dias de python"
    return render_template("home.html", techs = techs, name = name, title = "Home")

@app.route("/about")
def about():
    name = "Treinta dias de python"
    return render_template("about.html", name = name, title = "About us")

@app.route("/result")
def result():
    return render_template("result.html")

@app.route("/post")
def post():
    name = "Text Analyzer"
    if request.method == "GET":
        return render_template("post.html", name = name, title = name)
    if request.method == "POST":
        content = request.form["content"]
        print(content)
        return redirect(url_for("result"))

if __name__ == "__main__":
    # for deployment we use the environ
    # to make it work for both production and development
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True, host="0.0.0.0", port=port)

```

So far, we learn:

 * How to use template

 * How to inject data to template

 * how to use a common layout.

#### Let's Handle now static file

let's create a new folder called static and inside there the file main.css

```sh

➜  (venv) python_for_web (main) mkdir static
➜  (venv) python_for_web (main) cd static
➜  (venv) static (main) touch css.css                                                                        

```

#### main.css

```css

/* === GENERAL === */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* === css variables === */
:root {
    --header-bg-color: #4a7799;
    --textarea-bg-color: rgb(250, 246, 246);
    --body-bg-color: rgb(210, 214, 210);
    --nav-link-color: #bbb;
}

/* === body style === */
body {
    background: var(--body-bg-color);
    margin: auto;
    line-height: 1.75;
    font-weight: 900;
    word-spacing: 1.5px;
    font-family: 'Lato',sans-serif;
    font-weight: 300;
}

/* === header style === */
header {
    background: var(--header-bg-color);
}
/* === title and subtitle style === */
h1,
h2 {
    margin: 20px;
    font-weight: 300;
    font-family: Nunito;
}

/* === header menu style === */

.menu-container {
    width: 90%;
    display: flex;
    justify-content: space-around;
    align-items: center;
    color: rgb(221, 215, 215);
    padding: 25px;
}

.nav-lists {
    display: flex;
}

.nav-list {
    list-style: none;
    margin: 0 5px;
}

.nav-link {
    text-decoration: none;
    font-size: 22px;
    padding: 0 5px;
    color: var(--nav-link-color);
    font-weight: 400;
}

.brand-name {
    font-size: 28px;
    font-weight: bolder;
}
/* === paragraph text style === */
p {
    font-size: 22px;
    font-weight: 300;
}

/* === main style === */
main {
    width: 90%;
    margin: auto;
}

/* === container div inside main style === */

.container {
    background: rgb(210, 214, 210);
    padding: 20px;
    margin: auto;
}

.tech-lists {
    margin: 10px auto;
    text-align: left;
    font-size: 20px;
}
.tech {
    list-style: none;
}
/* === button style === */
.btn {
    width: 150px;
    height: 50px;
    background: var(--header-bg-color);
    color: var(--nav-link-color);
    font-size: 20px;
    margin: 5px;
    border: 1px solid var(--header-bg-color);
    font-family: Lato;
    cursor: pointer;
}

.btn:focus {
    outline: 2px solid #2a70a5;
    cursor: pointer;
}
/* === textarea style === */
textarea {
    width: 65%;
    margin: auto;
    padding: 10px 15px;
    outline: 2px solid rgba(207, 203, 203, 0.25);
    border: none;
    font-size: 18px;
    font-family: Lato;
    font-weight: 300;
}

textarea:focus {
    border: none;
    outline: 2px solid rgba(74, 119, 153, 0.45);
    background: var(--textarea-bg-color);
    font-size: 18px;
    caret-color: var(--header-bg-color);
    font-family: Lato;
    font-weight: 300;

}

/* === responsiveness === */
@media (max-width:600px) {

    .menu-container {
        flex-direction: column;
        justify-content: space-between;
    }
    h1{
        font-size: 22px;
    }

    .nav-lists {
        flex-direction: column;
    }

    textarea {
        width: 100%;
    }

}

```

### Deployment

#### Creating Heroku account

Heroku provides a free deployment service for both front end and fullstack application. Create an account on Heroku and install the heroku CLI for you machine.

After installing heroku write the following command

### Login to Heroku

```sh

➜  (venv) python_for_web (main) heroku login
➜  heroku: Press any key to open up the browser to login or q to exit:

```

#### Create requirements and Procfile

Before we push our code to remote server, we need requirements

 * requirements.txt

 * Procfile

```sh

➜  (venv) python_for_web (main) pip freeze > requirements.txt
➜  (venv) python_for_web (main) touch Procfile

```

The Procfile will have the command which run the application in the web in our case on Heroku

```

web: python app.py

```

### Pushing project to Heroku

Now, it is ready to be deployed. Steps to deploy the application on heroku

```sh

git init

git add .

git commit -m "commit message"

heroku create 'name of the app as one word'

git push heroku master

heroku open(to launch the deployed application)

```
#basics_python
#frameworks
