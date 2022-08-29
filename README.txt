"Para este proyecto en el cuál realizo todo el proceso de ETL (extraccion, transformacion y carga) 
y análisis de datos para dar respuesta a algunas interrogantes planteadas"
-- Para el mismo utilicé 3 archivos fuentes, disponibles libremente desde páginas públicas del gobierno, importando cada
uno de los csv desde las url utilizando el método Requests y almacenando en forma local siguiendo la estructura de “categoría\año-mes\categoria-dia-mes-año.csv”
Una vez leído los archivos.csv los procese y normalice cada uno de ellos para crear las tablas bases que son;
Biblioteca, Cines, Museos y las tablas dependientes que son; Provincia, Departamento y Localidad dependintes para mandar a la base de datos,
en este caso el motor utilizado fue PostgreSQL.
Una vez obtenida cada una de las tablas y sus respectivas relaciones,  se pueden hacer consultas sobre ellas como:
*Cantidad de registros totales por fuente 
*Cantidad de registros por provincia y categoría
Entre otras.

Los archivos no estan sobre .py sino en .ipynb que es la extensión de los archivos de notebooks 
ya que, para el procesamiento de datos es más cómodo trabajar sobre notebooks que sobre archivos planos de python,
también se encuentran disponibles todos los Script.sql de todas las consultas y creación de las tablas .

*Pasos para ejecutar el Proyecto:


Importador.ipynb  se importan los .csv con la url
Conector.py       crea el engine para las conecciones a la base de Datos

Conect_Biblioteca.ipynb}
Conect_Cines.ipynb     } Procesamiento y creación de las tablas 
Conect_Museos.ipynb    } importación a la base de datos y creación de llaves PRIMARY KEY, FOREIGN KEY de cada una de ellas.

Relaciones.ipynb   creando las tablas dependientes Provincia, Departamento y Localidad 
                   también sus llaves PRIMARY KEY, FOREIGN KEY
                   y por último las relaciones respectivas.
                   
Resultado_total.ipynb   acá podemos ver las consultas realizadas.
                   



*Modulos utilizadas:
sqlalchemy
pandas
requests
pathlib
cgitb


