SHOW databases;

USE tienda;

SHOW tables;

#ejemplo 01
select *
from articulo
WHERE nombre LIKE 'pasta%';

#ejemplo 02
SELECT * 
FROM articulo
where nombre like '%Cannelloni%';

#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT *
from articulo
WHERE nombre LIKE '%-%' ;

#¿Qué puestos incluyen la palabra Designer?
SELECT *
FROM puesto
Where nombre LIKE '%designer%';

#¿Qué puestos incluyen la palabra Developer?
SELECT *
FROM puesto where nombre LIKE '%Developer%';

#¿Cuál es el promedio de salario de los puestos?

SELECT AVG(salario) AS "promedio_salario"
FROM puesto;


#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
select count(*) as "pasta"
from articulo
WHERE nombre LIKE 'pasta%';

#¿Cuál es el salario mínimo y máximo?
SELECT max(salario) as "Salario_minimo", min(salario) AS "Salario_maximo"
FROM puesto;


#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT sum(salario) as "Suma_salarios"
from puesto
order by id_puesto desc 
limit 5;

##agrupamientos##

#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) as registros 
from puesto 
group by nombre;

#¿Cuánto dinero se paga en total por puesto?
select  nombre , sum(salario) as salario
from puesto
group by nombre;

#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(*) 
from venta
group by id_empleado;


#¿Cuál es el número total de ventas por artículo?

SELECT id_articulo, count(*) as "total_ventas"
from venta
group by id_articulo;



















