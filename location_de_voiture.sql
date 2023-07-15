sql
-- Création de la table "Voiture"
CREATE TABLE Voiture (
    id INT PRIMARY KEY,
    marque VARCHAR(50),
    modele VARCHAR(50),
    annee INT,
    prix DECIMAL(10, 2),
    disponible BOOLEAN
);

-- Création de la table "Client"
CREATE TABLE Client (
    id INT PRIMARY KEY,
    nom VARCHAR(40),
    adresse VARCHAR(70),
    email VARCHAR(100),
    telephone VARCHAR(25)
);

-- Création de la table "Location"
CREATE TABLE Location (
    id INT PRIMARY KEY,
    id_voiture INT,
    id_client INT,
    date_debut DATE,
    date_fin DATE,
    FOREIGN KEY (id_voiture) REFERENCES Voiture(id),
    FOREIGN KEY (id_client) REFERENCES Client(id)
);
-- Insertion de données dans la table "Voiture"
INSERT INTO Voiture (id, marque, modele, annee, prix, disponible)
VALUES (1, 'mercedes', 'maybach', 2020, 50000.00, TRUE);

INSERT INTO Voiture (id, marque, modele, annee, prix, disponible)
VALUES (2, 'Hundai', 'tucson', 2020, 60000.00, FALSE);

-- Insertion de données dans la table "Client"
INSERT INTO Client (id, nom, prenom, adresse, email, telephone)
VALUES (1, 'sady', 'talla', 'dakar,oueste_foire', 'sadypaptalla53@gmail.com', '+221 77 807 90 54');

INSERT INTO Client (id, nom, prenom, adresse, email, telephone)
VALUES (2, 'gaye', 'mass', 'thies,medina fall', 'gayemass45@gmail.com', '+221 703411957');

-- Insertion de données dans la table "Location"
INSERT INTO Location (id, id_voiture, id_client, date_debut, date_fin)
VALUES (1, 1, 1, '2023-07-01', '2023-07-07');

INSERT INTO Location (id, id_voiture, id_client, date_debut, date_fin)
VALUES (2, 2, 2, '2023-07-03', '2023-07-08');
UPDATE Voiture
SET prix = 50000.00
WHERE id = 1;
DELETE FROM Voiture
WHERE id = 2;
SELECT *
FROM Voiture
ORDER BY prix ASC;
