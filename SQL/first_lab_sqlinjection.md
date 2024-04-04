hay | bases de datos | tables | columns | Data

 This lab contains a SQL injection vulnerability in the product category filter. When the user selects a category, the application carries out a SQL query like the following:

SELECT * FROM products WHERE category = 'Gifts' AND released = 1 

el asterisco indica que te muestre todos los datos que existan o aplicar una seleccion completa de todo lo que haya almacenado en unas columanas dadas, de una tabla dada, de una base de datos dada.
'' entre comillas pones la categoria que estas buscando
"products" hace referencia a la tabla
"category" hace referencia a las columnas
"gifts" seria la categoria que estoy buscando

esto es lo que el lab te pide que hagas:To solve the lab, perform a SQL injection attack that causes the application to display one or more unreleased products. 
en otras palabras en la base de datos de la pagina web hay productos que no estan publicados pero estan en la base de datos y nos pide que hagamos un ataque de sql para que nos lo muestre

la url de la pagina es https://0acf006d04417a35807bd5cd00ba00fd.web-security-academy.net/filter?category=Tech+gifts

alfinal de la pagina donde pone Tech+gifts hace referencia a la categoria, si despues de la categoria ponemos el valor "'or 1=1-- -" que significa que 1=true y 1=true lo cual siempre va a ser true

-- - indica un comentario, tambien podria valer 
#SQL
