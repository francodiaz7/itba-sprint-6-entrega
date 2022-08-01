--1er punto:
SELECT customer_name || " " || customer_surname as name, balance as saldo 
FROM cliente INNER JOIN cuenta 
ON cuenta.customer_id = cliente.customer_id AND balance < 0;

--2do punto:
SELECT customer_name, customer_surname, datetime('NOW')-cliente.dob as edad  FROM cliente WHERE customer_surname LIKE '%Z%'

--3er punto:
SELECT customer_name as nombre, customer_surname as apellido, datetime('NOW')-cliente.dob as edad, 
branch_name as NombreSucursal
FROM cliente, sucursal WHERE cliente.customer_name = 'Brendan'
ORDER BY branch_name

--4to punto:
SELECT cliente.customer_id as nombreCliente, prestamo.loan_type as tipo, prestamo.loan_total as monto
FROM prestamo INNER JOIN cliente ON prestamo.customer_id = cliente.customer_id 
WHERE monto > 8000000 OR tipo = 'PRENDARIO';

--5to punto:
SELECT cliente.customer_id, prestamo.loan_total FROM prestamo
INNER JOIN cliente ON prestamo.customer_id = cliente.customer_id
WHERE prestamo.loan_total > (SELECT avg(prestamo.loan_total) FROM prestamo)

--6to punto:
SELECT count(cliente.dob) as menoresA50 FROM cliente WHERE datetime('NOW')-cliente.dob < 50

--7mo punto:
SELECT balance as saldo FROM cuenta WHERE balance > 8000000 ORDER BY balance ASC LIMIT 5

--8vo punto:
SELECT loan_date as fecha, loan_total as importe FROM prestamo WHERE fecha like '20__-08-__' or 
(SELECT loan_date FROM prestamo WHERE fecha like '20__-06-__') or 
(SELECT loan_date FROM prestamo WHERE fecha like '20__-04-__') ORDER BY importe

--9no punto:
SELECT prestamo.loan_type as tipoPrestamo, sum(prestamo.loan_total) as loan_total_accu
FROM prestamo
GROUP BY tipoPrestamo