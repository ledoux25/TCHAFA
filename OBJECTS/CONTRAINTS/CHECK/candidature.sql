PROMPT Creating table candidatures 
ALTER TABLE candidatures ADD CONSTRAINT statut_candidatures
                                 check(statut_candidature in('RETENU','REJETER','CONFIRMER','EN ATTENTE'));