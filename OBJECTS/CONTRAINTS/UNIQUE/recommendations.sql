PROMPT Creation des contraints unique  recommendations
ALTER TABLE recommendations ADD CONSTRAINT unique8_mail unique (recom_email);
ALTER TABLE recommendations ADD CONSTRAINT recom_unique_numero  unique (recom_numero);