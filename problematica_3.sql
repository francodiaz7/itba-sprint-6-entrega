--1er punto: 
SELECT customer_name || " " || customer_surname as name, balance as saldo 
FROM cliente INNER JOIN cuenta 
ON cuenta.customer_id = cliente.customer_id AND balance < 0;

--2do punto: 
SELECT customer_name, customer_surname FROM cliente WHERE customer_surname LIKE '%Z%'

--3er punto: 
SELECT customer_name as nombre, customer_surname as apellido, datetime('NOW')-cliente.dob as edad, 
branch_name as NombreSucursal
FROM cliente, sucursal WHERE cliente.customer_name = 'Brendan'
ORDER BY branch_name

--4to punto:
SELECT cliente.customer_id as cliente, prestamo.loan_type as tipo, prestamo.loan_total as monto
FROM prestamo INNER JOIN cliente ON prestamo.customer_id = cliente.customer_id 
WHERE monto > 8000000 OR tipo = 'PRENDARIO' ORDER BY tipo;

--6to punto:
SELECT count(cliente.dob) as edad FROM cliente WHERE datetime('NOW')-cliente.dob < 50

--7mo punto:
SELECT balance as saldo FROM cuenta WHERE balance > 800000 ORDER BY balance ASC