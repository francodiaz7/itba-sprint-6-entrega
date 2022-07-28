#PRIMER ITEM

#Crea tabla tipo_cliente
CREATE TABLE tipo_cliente(
    tipo_cliente_id INTEGER PRIMARY KEY, 
    tipos_de_clientes TEXT NOT NULL
);
INSERT INTO tipo_cliente(tipos_de_clientes) 
VALUES('CLASSIC'),('GOLD'),('BLACK');

#Crea tabla marcas_de_tarjetas
CREATE TABLE marcas_de_tarjetas(
    marcas_tarjeta_id INTEGER PRIMARY KEY, 
    marca_tarjeta TEXT NOT NULL
);
INSERT INTO marcas_de_tarjetas(marca_tarjeta) 
VALUES('MasterCard'),('Visa'),('American Express');

#Crea tabla tipos_de_cuentas
CREATE TABLE tipos_de_cuentas(
	tipos_de_cuentas_id INTEGER PRIMARY KEY, 
	tipo_de_cuenta TEXT NOT NULL
);
INSERT INTO tipos_de_cuentas(tipo_de_cuenta) 
VALUES('Caja de Ahorro en Pesos'),('Caja de Ahorro en Dolares'),('Cuenta Corriente en Pesos'),('Cuenta Corriente en Dolares'),('Cuenta Inversion');

#SEGUNDO ITEM
CREATE TABLE tarjeta(
	numero INTEGER UNIQUE PRIMARY KEY NOT NULL CHECK(20>=length(Numero)) ,
	CVV INTEGER NOT NULL CHECK(length(CVV)<=4),
	fecha_de_otorgamiento INTEGER NOT NULL CHECK(length(fecha_de_otorgamiento)=4),
	fecha_de_vencimiento INTEGER NOT NULL CHECK(length(fecha_de_vencimiento)=4),
	tipo_tarjeta TEXT NOT NULL CHECK(tipo_tarjeta="credito" OR tipo_tarjeta="debito")
);
