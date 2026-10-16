SELECT * FROM plat
ORDER BY prix DESC;

SELECT c.nom_categorie, COUNT(p.id_plat) AS nombre_plats
FROM categorie c
LEFT JOIN plat p ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie, c.nom_categorie
ORDER BY c.nom_categorie;