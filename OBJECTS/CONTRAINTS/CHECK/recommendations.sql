PROMPT Creating table recommendations
ALTER TABLE recommendations ADD CONSTRAINT recom_statut
                                 check( recom_statut in ('REJETER','EN ATTENTE','CONFIRMER'));

                                 ALTER TABLE recommendations ADD CONSTRAINT mail_recom
                                check (recom_email LIKE '%@gmail.com');