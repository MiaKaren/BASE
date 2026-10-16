CREATE DATABASE gargote;
\c gargote


CREATE TABLE plat (
    id_plat SERIAL PRIMARY KEY,
    nom  VARCHAR(100)     NOT NULL,
    categ   VARCHAR(100)     NOT NULL,
    prix INT NOT NULL,
)

INSERT INTO plat (nom,categ,prix) VALUES
('Romazava', 'Plat malagasy', 7000),
('Ravitoto sy henakisoa', 'Plat malagasy', 8000),
('Akoho sy voanio', 'Plat malagasy', 8500),
('Mi sao', 'Plat chinois', 6000),
('Soupe Chinoise', 'Soupe', 5000),
('Mofo gasy(les 4)', 'Dessert et goûter', 1000),
('Ranonampango', 'Boisson', 500);

