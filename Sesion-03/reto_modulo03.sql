##Retos sesion 3 
USE tienda;
SHOW tables;
#Reto 01 Subconsultas
##¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?
select * from empleado;

select * FROM puesto where salario > 10000;

select nombre, apellido paterno
FROM empleado 
WHERE  id_puesto in (select id_puesto FROM puesto where salario > 10000);

##¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

SELECT clave,id_empleado, count(*) total_ventas FROM venta group by clave, id_empleado;

SELECT id_empleado, min(total_ventas), max(total_ventas)
from (SELECT clave,id_empleado, count(*) total_ventas FROM venta group by clave, id_empleado) AS sq
group by id_empleado;


##¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
select id_articulo
from articulo
where precio >5000;

select clave
from venta
where id_articulo IN (select id_articulo
from articulo
where precio >5000);


#¿Cuál es el nombre de los empleados que realizaron cada venta?
select e.nombre, e.apellido_paterno, v.clave
from empleado e 
join venta v ON e.id_empleado = v.id_empleado;


#¿Cuál es el nombre de los artículos que se han vendido?
select * from articulo;
--
Select a.nombre
from venta v
join articulo a ON  v.id_articulo = a.id_articulo;


#¿Cuál es el total de cada venta?
select  v.clave, sum(a.precio) as total_venta
from articulo a
join venta v ON a.id_articulo = v.id_articulo
group by v.clave;

-- Reto 03 Creacion de Vistas (Views)

###Obtener el puesto de un empleado.
CREATE VIEW puestoXempleado177 AS
	select  e.nombre, e.apellido_paterno, p.nombre
	from puesto p
	join empleado e 
	ON e.id_puesto = p.id_puesto;
###Saber qué artículos ha vendido cada empleado.
Create view articuloXempleado AS	
    select e.nombre, e.apellido_paterno, a.nombre
	from articulo a
	JOIN venta v ON v.id_articulo = a.id_articulo
	JOIN empleado e ON v.id_empleado = e.id_empleado; 
###Saber qué puesto ha tenido más ventas.
Create view puestoXventas AS
	Select p.nombre, count(*) as "Ventas"
	from puesto p
	JOIN empleado e ON p.id_puesto=e.id_puesto
	join venta v ON e.id_empleado=v.id_empleado
	group by p.nombre
	order by count(*) desc
	limit 1







