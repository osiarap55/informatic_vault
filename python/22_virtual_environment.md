 * to start with project, it would be better to have a virtual environment. 
 * Virtual environment can help us to create an isolated or separate environment. 
 * This will help us to avoid conflicts i dependencies across projects.
 * If we use virtualenv, we will access only packages which are specific for that project. 

1.- installing virtualenv

```sh

~$ pip install virtualenv

```

2.- create a new folder where you want to build your environment

3.- go to your project folder and create a virtual environment 

```sh

~$ virtualenv venv

```

4.- let's activate your virtual environment 

```sh

~$ source venv/bin/activate

```

5.- now let's check with pip freeze what packages you have install "you will not see any packages"

6.- Install whatever module or packages you want in the environment

7.- when finishing using desactivate environment 

```sh

~$ deactivate

```

8.- if you are using github, include venv to your .gitignore file not to push it.

#basics_python
