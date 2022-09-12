SELECT "Provincia" , sum ("Pantallas")as "Pantallas" ,sum("Butacas")as "Butacas" ,count("Espacio_Incaa") as "Espacio_Incaa" 
FROM "CINES"
NATURAL JOIN "Departamento"
NATURAL JOIN "Localidad"
NATURAL JOIN "Provincia"
GROUP BY "Provincia"
ORDER BY "Provincia"   ASC;