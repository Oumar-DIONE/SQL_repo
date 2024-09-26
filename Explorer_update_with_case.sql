-- AFFICHAGE BRUT DES TABLEAUX
select * from fonction;
select * from sites;
select * from absences;
select * from collaborateurs;
ALTER TABLE collaborateurs ADD COLUMN departements character(50);
alter table collaborateurs drop departements
insert into collaborateurs(departements) values 
update collaborateurs set departement=case 
when id_collaborateur= 'SQ080' then 'IT'
when id_collaborateur= 'SR250' then 'VENTES'
when id_collaborateur= 'SQ265' then 'Achats'
when id_collaborateur= 'SZ889' then 'RH'
when id_collaborateur= 'GS864' then 'IT'
when id_collaborateur= 'WB034' then 'VENTES'
when id_collaborateur= 'DP948' then 'Financier'
when id_collaborateur= 'MP985' then 'Marketing'
when id_collaborateur= 'ME845' then 'IT'
when id_collaborateur= 'DI706' then 'Financier'
when id_collaborateur= 'DH960' then 'RH'
end 




-- Mise à jour et rectifcation de certaines valeurs
-- 1. écrire en majuscule de tous les noms dans la table collaborateur

UPDATE collaborateurs SET nom = UPPER(nom);
UPDATE collaborateurs SET departement = UPPER(departement);

-- Mise à jour des salaires des collaborateurs dans les départements RH et IT
update collaborateurs set salaire_brut =case 
when departement='RH' then salaire_brut+ money(100)
when departement='IT' then salaire_brut*0.85
end

