CREATE TABLE commande(
      id_commande SERIAL PRIMARY KEY,
      date_commande DATE NOT NULL    DEFAULT CURRENT_DATE
);

CREATE TABLE commande_plat (
    id_commande INT REFERENCES commande(id_commande),
    id_plat INT REFERENCES plat(id_plat),
    quantite INT NOT NULL CHECK (quantite > 0),
    PRIMARY KEY (id_commande, id_plat)
);

INSERT INTO commande_plat (id_commande, id_plat, quantite) VALUES
(1, 1, 2),
(1, 4, 3);