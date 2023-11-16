CREATE TABLE clients(
customer_id int primary key not null,
nom varchar (30) not null,
adresse varchar (50) not null 
);
create table produits(
product_id int primary key not null,
nom varchar (30) not null,
prix decimal check (prix > 0) not null
);
create table commandes (
order_id int primary key not null,
customer_id int not null,
product_id int not null,
quantity int not null,
date_de_commande date,
);
ALTER TABLE commandes
ADD CONSTRAINT const_i FOREIGN KEY (customer_id) REFERENCES customer (costumer_id);

ALTER TABLE commandes
ADD CONSTRAINT const_i FOREIGN KEY (product_id) REFERENCES product (product_id);

INSERT INTO produits values (  1 ,'cookie',  '10')

INSERT INTO produits values ( 2, 'candy',  '5,2')


INSERT INTO clients values ( 1, 'ahmed',  'tunisie')
INSERT INTO clients values ( 2, 'coulibaly',  'senegale')
INSERT INTO clients values ( 3, 'hasan',  'egypte')

INSERT INTO commandes values ( 1, 2, 3 , '2023-01-22')
INSERT INTO commandes values ( 1, 2, 10, '2023-04-14')


UPDATE commandes 
SET  customer_id= 6
WHERE order_id = 2;

DELETE FROM clients WHERE customer_id = 3


DELETE commandes