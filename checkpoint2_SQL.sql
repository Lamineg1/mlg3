------ onvertissez le diagramme entité-relation donné en un modèle relationnel

--Producteur (NumProd, NomProd, PrenomProd, DateNaissanceProd, RegionProd)
--Vin (NumVin, NomVin, Categorie, Degre, QuantiteProd, NumProd)


CREATE TABLE wine (NumW INT PRIMARY KEY, category VARCHAR (30), years INT, degree VARCHAR);

CREATE TABLE product (NumP INT PRIMARY KEY, firsName VARCHAR (30),lastName VARCHAR (30), region VARCHAR);

SELECT * FROM product ;

SELECT * FROM product ORDER BY lastName;
SELECT * FROM product ORDER BY NumP;

SELECT * FROM ProducT WHERE Region = 'Sousse';

SELECT SUM(QuantityProd) FROM WINE WHERE NumW = 12;
SELECT category, SUM(QuantityProd) FROM wine GROUP BY category;
 
SELECT firsName, lastName FROM Product 
INNER JOIN Recolte ON NumP = NumP
WHERE Region = 'Sousse' AND quantity > 300 
ORDER BY firsName, lastName;

SELECT NumW FROM wine 
WHERE Degree > 12 AND NumP = 24;

