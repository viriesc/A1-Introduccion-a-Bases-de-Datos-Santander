
# Me muestra los datos en el servidor
Show databases;

#Me permite conectarme a un esquema de datos en especifico y trabajar sobre el 
USE tienda;
SHOW tables;

#arroja la descripcion de cada campo de la tabla 
DESCRIBE empleado;
describe articulo;
describe venta;

SELECT nombre FROM empleado where id_empleado=10;
SELECT * FROM empleado where id_puesto >=100 AND id_puesto <=200;
SELECT * FROM empleado where id_puesto >=100 OR id_puesto <=200;
SELECT * FROM empleado where id_puesto IN (100,200,300); 
 

#RETOS DE GIT # 

#¿Cuál es el nombre de los empleados con el puesto 4?
SELECT nombre FROM empleado where id_puesto= 4;

#¿Qué puestos tienen un salario mayor a $10,000?
select * from puesto where salario > 10000;

#¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
SELECT * FROM articulo WHERE precio >1000 AND iva>100;

#Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
SELECT * FROM venta WHERE id_articulo IN (135,963) AND id_empleado IN (835,369);


#Orden BY ASC (default)
SELECT * FROM customers ORDER BY contactLastName;
SELECT * FROM customers ORDER BY contactLastName DESC;

#LIMITE DE 10
SELECT * FROM customers ORDER BY creditLimit DESC LIMIT 10; 




