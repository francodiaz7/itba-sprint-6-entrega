#item1
select  b.branch_name, count(b.branch_name)
from cliente a inner join sucursal b
on b.branch_id = a.branch_id
GROUP by b.branch_name

#item2
select  b.branch_name, count(b.branch_name), count(employee_id)
from cliente a inner join sucursal b
on b.branch_id = a.branch_id

inner join empleado c on c.branch_id = a.branch_id

GROUP by b.branch_name


#item4
select  a.branch_name, avg(c.loan_total)
from cliente b inner join prestamo c
on c.customer_id = b.customer_id

inner join sucursal a
on b.branch_id = a.branch_id
group by a.branch_name


