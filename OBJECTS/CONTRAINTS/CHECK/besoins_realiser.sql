PROMPT Creating table besoins_realise
ALTER TABLE besoin_realiser ADD CONSTRAINT note
                              check(note > 0 AND note < 20);