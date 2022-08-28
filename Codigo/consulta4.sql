select "Provincia","Categoria", COUNT ("Categoria")as "Total.Cat" 
from Total_Registro
NATURAL JOIN "Departamento"
NATURAL JOIN "Localidad"
NATURAL JOIN "Provincia"
GROUP BY "Categoria", "Provincia" 
UNION
select "Provincia","Categoria", COUNT ("Categoria")as "Total.Cat"
from Total_Registro2
NATURAL JOIN "Departamento"
NATURAL JOIN "Localidad"
NATURAL JOIN "Provincia"
GROUP BY "Categoria", "Provincia"
UNION
select "Provincia","Categoria", COUNT ("Categoria")as "Total.Cat"
from Total_Registro3
NATURAL JOIN "Departamento"
NATURAL JOIN "Localidad"
NATURAL JOIN "Provincia"
GROUP BY "Categoria", "Provincia"
ORDER BY "Provincia"   ASC;