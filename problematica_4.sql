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

#item3
SELECT a.branch_name AS Sucursal, COUNT(b.customer_id) AS 'Cantidad clientes', COUNT(*) FILTER (WHERE c.tipo_tarjeta LIKE '%Crédito%') AS Crédito, COUNT(*) FILTER (WHERE c.tipo_tarjeta LIKE '%Débito%') AS Débito
FROM sucursal a INNER JOIN cliente b ON a.branch_id = b.branch_id
				INNER JOIN tarjeta c ON c.customer_id = b.customer_id
GROUP BY a.branch_name

#item4
select  a.branch_name, avg(c.loan_total)
from cliente b inner join prestamo c
on c.customer_id = b.customer_id

inner join sucursal a
on b.branch_id = a.branch_id
group by a.branch_name

#item5

CREATE TABLE auditoria_cuenta (
    old_id INTEGER NOT NULL,
    new_id INTEGER NOT NULL,
    old_balance INTEGER NOT NULL,
    new_balance INTEGER NOT NULL,
    old_iban TEXT NOT NULL,
    new_iban TEXT NOT NULL,
    old_tipos_de_cuentas_id TEXT,
    new_tipos_de_cuentas_id TEXT,
    user_action TEXT NOT NULL,
    created_at TEXT NOT NULL
);
#item5sub1
CREATE TRIGGER after_update_cuenta
    AFTER UPDATE ON cuenta
    WHEN old.balance <> new.balance
        OR old.iban <> new.iban
        OR old.tipos_de_cuentas_id <> new.tipos_de_cuentas_id
BEGIN
    INSERT INTO 'auditoria_cuenta' (old_id, new_id, old_balance, new_balance, old_iban, new_iban, old_tipos_de_cuentas_id, new_tipos_de_cuentas_id, user_action, created_at)
    VALUES (old.customer_id, new.customer_id, old.balance, new.balance, old.iban, new.iban, old.tipos_de_cuentas_id, new.tipos_de_cuentas_id, 'UPDATE', DATETIME('NOW'));
END;
#item5sub2
UPDATE cuenta
SET balance = balance-100
WHERE account_id BETWEEN 10 AND 14;

#item6
CREATE INDEX cliente_customer_dni_idx
ON cliente (customer_DNI);

#item7
CREATE TABLE movimientos (
    movimiento_id INTEGER NOT NULL,
    numero_cuenta TEXT NOT NULL,
    monto INTEGER NOT NULL,
    tipo_operacion TEXT NOT NULL,
    hora TEXT NOT NULL,
    PRIMARY KEY("movimiento_id" AUTOINCREMENT)
);
#item7sub
BEGIN TRANSACTION;

UPDATE cuenta
SET balance = balance - 1000
WHERE account_id = 200;

UPDATE cuenta
SET balance = balance + 1000
WHERE account_id = 400;

INSERT INTO movimientos(numero_cuenta, monto, tipo_operacion, hora)
VALUES (200, 1000, 'Disminución', DATETIME('NOW'));

INSERT INTO movimientos(numero_cuenta, monto, tipo_operacion, hora)
VALUES (400, 1000, 'Aumento', DATETIME('NOW'));

COMMIT;