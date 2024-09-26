CREATE TABLE public.collaborateurs
(
    nom character(5),
    prenom date,
    date_de_naissance date,
    date_entree date,
    id_fonction character(4),
    departement character(40),
    id_sites character(4),
    salaire_brut money,
    id_collaborateur character(5),
    PRIMARY KEY (id_collaborateur),
    CONSTRAINT constraint1 FOREIGN KEY (id_sites, None)
        REFERENCES public.sites (id_site, None) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT constraint_id_fonction FOREIGN KEY (id_fonction)
        REFERENCES public.fonction (id_fonction) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.collaborateurs
    OWNER to "user-odione";

    SELECT nom, prenom, date_de_naissance, date_entree, id_fonction, departement, id_sites, salaire_brut, id_collaborateur, aaa
	FROM public.collaborateurs;
insert into fonction values (3,'0000','Assistant de Recherche')
insert into sites values ('FP00','Site le CREST','Palaiseau','France')
insert into public.collaborateurs values ('Dione','1996-11-18','2024-09-01','0000','Statistique','FP00',4000,'00000',0,'Oumar')
select * from fonction
select * from collaborateurs
insert into public.collaborateurs values 
('FEVRE','1986-01-17','2017-11-01','0276','IT','SG01',45000,'SQ080',0,'Celeste'),
('SARR','1982-04-05','2018-04-04','0041','VENTES','FP01',3025,'SR250',0,'Ibrahima'),
('LOPEZ','1976-09-27','2017-06-03','0167','Achats','FP01',3520,'SQ265',0,'Mathieu'),
('AMORI','1991-07-17','2020-11-06','0015','RH','FM01',2500,'SZ889',0,'Marco'),
('LYMAN','2000-02-19','2020-07-23','0054','IT','FM01',4400,'GS864',0,'AYMAN'),
('PLATO','1977-06-30','2019-12-01','0042','VENTES','FP01',3070,'WB034',0,'Christine'),
('BLEUZ','2001-03-10','2022-08-01','0056','Financier','SG01',4456,'DP948',0,'Samanta'),
('KASS','1981-08-23','2017-09-30','0227','Marketing','AB01',2890,'MP985',0,'lAURENT')
,('FOUFO','1979-07-29','2016-02-05','0044','IT','AB01',45000,'ME845',0,'Paul'),
('LAPEN','1985-02-13','2016-12-17','0056','Financier','AB01',4456,'DI706',0,'elia')
,('BAH','1995-12-31','2021-07-11','0010','RH','FB02',2540,'DH960',0,'Habib')
select * from collaborateurs