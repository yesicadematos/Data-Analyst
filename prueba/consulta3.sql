select "Fuente" ,COUNT ("Fuente")as "Total","Categoria",COUNT ("Categoria") as "Total"
from Total_Registro
GROUP BY "Fuente","Categoria"
UNION
select "Fuente" ,COUNT ("Fuente")as "Total","Categoria",COUNT ("Categoria") as "Total"
from Total_Registro2
GROUP BY "Fuente","Categoria"
UNION
select "Fuente" ,COUNT ("Fuente")as "Total","Categoria",COUNT ("Categoria") as "Total"
from Total_Registro3
GROUP BY "Fuente","Categoria" ;