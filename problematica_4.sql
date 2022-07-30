select  b.branch_name, count(b.branch_name)
from cliente a inner join sucursal b
on b.branch_id = a.branch_id
GROUP by b.branch_name
