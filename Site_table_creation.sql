CREATE TABLE public.sites
(
    id_site character(4),
    nom_site character(40),
    ville_site character(40),
    pays_site character(40),
    PRIMARY KEY (id_site)
);

ALTER TABLE IF EXISTS public.sites
    OWNER to "user-odione";


    INSERT INTO public.sites(
	id_site, nom_site, ville_site, pays_site)
	VALUES ('FP01', 'Site La Defense', 'Paris', 'France'),('FB02', 'Site France Ouest', 'Bordeaux', 'France'),('FM01', 'Site France Sud', 'Marseille', 'France'),('SG01', 'Site Lancy-Pont-Rouge', 'Genève', 'Suisse'),('AF01', 'Site Bankenviertel', 'Francfort', 'Allemagne'),('AB01', 'Site Alexandreplatz', 'Berlin', 'Allemagne');