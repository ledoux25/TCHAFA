PROMPT Creating indexes

create index utilisateur_id on recommendations(user_id);
create index publication_id on candidatures(publication_id);
create index utilisateurs_id on candidatures(user_id);
-- create index besion_realiser on candidatures(besoin_realiser_id);
create index publication_besion_id on publications(besoin_id);
create index besion_utilisateur_id on besoins(user_id);
create index besion_secteur_id on besoins(secteur_id);
create index liste_secteur on liste_secteurs(user_id);
create index liste_secteur_secteur on liste_secteurs(secteur_id);
