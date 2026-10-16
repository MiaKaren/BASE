SELECT * FROM plat
ORDER BY prix DESC;

SELECT c.nom_categorie, COUNT(p.id_plat) AS nombre_plats
FROM categorie c
LEFT JOIN plat p ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie, c.nom_categorie
ORDER BY c.nom_categorie;


SELECT
    c.id_commande,
    c.date_commande,
    COALESCE(SUM(p.prix * cp.quantite), 0) AS montant_total
FROM commande c
LEFT JOIN commande_plat cp ON c.id_commande = cp.id_commande
LEFT JOIN plat p ON cp.id_plat = p.id_plat
GROUP BY c.id_commande, c.date_commande
ORDER BY c.id_commande;
