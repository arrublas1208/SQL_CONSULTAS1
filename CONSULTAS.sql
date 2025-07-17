select * from fabricante;

select * from producto;


-- 1
select p.nombre as Producto, p.precio, f.nombre as Fabricante from producto p, fabricante f where p.id_fabricante = f.id; 

-- 2

select p.nombre as Producto, p.precio, f.nombre as Fabricante from producto p, fabricante f where p.id_fabricante = f.id order by  f.nombre asc; 

-- 3

select p.id as Identificador_producto, p.nombre as Producto, f.id as Identificador_Fabricante, f.nombre as Nombre_Fabricante
from producto p, fabricante f;

-- 4 

select nombre as Producto, precio, case when precio >= 200 then 'Alto' else 'Bajo' end as 'Nivel Precio' from producto;

-- 5

select id, nombre as Producto, precio, case when precio > 500 then 'Alto'  when precio between 100 and 500 then 'Medio'  when precio < 100 then 'Bajo' 
end as 'Nivel Precio' 
from producto;

-- 6

select p.nombre as Producto, p.precio, f.nombre, 
case when p.precio <= 101 then 'Economico' when p.precio BETWEEN 101 and 500 then 'Intermedio' when p.precio > 500 then 'Premium' end as 'Clasificacion'
from producto p, fabricante f where p.id_fabricante = f.id order by p.nombre asc;

-- 7

select id, precio, nombre as Producto from producto p  where precio > 1000;

-- 8

select p.precio, p.nombre as Producto, f.nombre from producto p, fabricante f where p.id_fabricante = f.id  order by precio > 100;

-- 9

select p.precio, p.nombre as Producto, f.nombre from producto p, fabricante f where p.id_fabricante = f.id and (f.nombre = 'Lenovo' or f.nombre = 'Xiaomi');

-- 10

select p.precio, p.nombre as Producto, f.nombre from producto p, fabricante f where p.id_fabricante = f.id and precio > 200 order by p.precio asc ;