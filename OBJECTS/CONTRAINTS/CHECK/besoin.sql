PROMPT Creating table besoins

ALTER TABLE BESOINS ADD CONSTRAINT paiement_par
                                check (paiement_par in ('JOUR','MOIS','SEMAINE'));