 This lab contains a SQL injection vulnerability in the login function.

To solve the lab, perform a SQL injection attack that logs in to the application as the administrator user.

en el apartado de login, tenemos que intentar loggear, entendemos que donde se guardan los usuarios y cosntrase~nas es una base de datos lo cual funciona como tal y podemos ejecutar distintos comando para entrar.

detras en la base de datos tiene que haber una quary como esta:
select nombre,apellidos from users where username = 'administrator' and password = 'password'

si ponemos en el input de username= administrator'-- -
entendera que no hace falta poner contrase~na. 
#SQL
