CREATE TABLE public.absences
(
    id_collaborateur character(5),
    date_debut_absence date,
    date_fin_absence date,
    type_absence character(30),
    CONSTRAINT fk3 FOREIGN KEY (id_collaborateur)
        REFERENCES public.collaborateurs (id_collaborateur) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.absences
    OWNER to "user-odione";


select * from absences

insert into absences values ('SQ080','2021-07-31','2021-08-05','Congé payé',45),
('SZ889','2021-09-01','2021-09-01','Congé payé',1.5),
('WB034','2021-08-12','2021-08-12',' Retard',7.5)
,('MP985','2021-09-16','2021-09-17','Absence non justifiée',15)
,('ME845','2021-09-07','2021-09-09','Certificat Maladie',22.5);
select * from absences

