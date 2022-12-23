--1--liste des biéres avce le type  de biéres , la marque, la couleurordonnée parcontinenet et pays
select NOM_TYPE, NOM_MARQUE, NOM_COULEUR,ID_COULEUR, NOM_pays, nom_continent
FROM TYPEBIERE, MARQUE, COULEUR, PAYS, CONTINENT;
--2 nombre de bieres  par  faricant--
select ID_FABRICANT, NOM_FABRICANT, nom_article
from FABRICANT, ARTICLE;
--3--Pour chaque ticket: j'aimerais le détail 
select ANNEE, NUMERO_TICKET, DATE_VENTE, nom_article
from TICKET, ARTICLE;
--4-- Le montant global moyen pour un ticket par année
SELECT AVG(NUMERO_TICKET*PRIX_VENTE) 
FROM VENDRE
GROUP BY ANNEE 
--5--pour chauque pays ,avoir le nombre de bieyes  par  type 
SELECT  id_pays, nom_type, nom_pays
from PAYS, TYPEBIERE