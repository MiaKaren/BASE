CREATE DATABASE gargote;
\c gargote



CREATE TABLE plat (
    id_plat SERIAL PRIMARY KEY,
    nom  VARCHAR(100)     NOT NULL,
    prix INT NOT NULL,
     id_categorie INT NOT NULL,
    FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);


INSERT INTO plat (nom, id_categorie, prix) VALUES
('Romazava', 1, 7000),
('Ravitoto sy henakisoa', 1, 8000),
('Akoho sy voanio', 1, 8500),
('Mi sao', 2, 6000),
('Soupe Chinoise', 3, 5000),
('Mofo gasy(les 4)', 4, 1000),
('Ranonampango', 5, 500);

