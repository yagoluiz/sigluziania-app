/* ************************ EDUCACAO ************************ */

/* ************************ PROCEDURE ************************ */
CREATE OR REPLACE FUNCTION inserirgeometriaeducacao()
RETURNS TRIGGER AS
$$
BEGIN
UPDATE educacao SET geometria = ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), 4326)
WHERE id_educacao = NEW.id_educacao;
RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';

/* ************************ TRIGGER ************************ */
CREATE TRIGGER geometriaeducacao AFTER INSERT ON educacao FOR EACH ROW
EXECUTE PROCEDURE inserirgeometriaeducacao();

/* ************************ LAZER ************************ */

/* ************************ PROCEDURE ************************ */
CREATE OR REPLACE FUNCTION inserirgeometrialazer()
RETURNS TRIGGER AS
$$
BEGIN
UPDATE lazer SET geometria = ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), 4326)
WHERE id_lazer = NEW.id_lazer;
RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';

/* ************************ TRIGGER ************************ */
CREATE TRIGGER geometrialazer AFTER INSERT ON lazer FOR EACH ROW
EXECUTE PROCEDURE inserirgeometrialazer();

/* ************************ SAUDE ************************ */

/* ************************ PROCEDURE ************************ */
CREATE OR REPLACE FUNCTION inserirgeometriasaude()
RETURNS TRIGGER AS
$$
BEGIN
UPDATE saude SET geometria = ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), 4326)
WHERE id_saude = NEW.id_saude;
RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';

/* ************************ TRIGGER ************************ */
CREATE TRIGGER geometriasaude AFTER INSERT ON saude FOR EACH ROW
EXECUTE PROCEDURE inserirgeometriasaude();

/* ************************ SEGURANCA ************************ */

/* ************************ PROCEDURE ************************ */
CREATE OR REPLACE FUNCTION inserirgeometriaseguranca()
RETURNS TRIGGER AS
$$
BEGIN
UPDATE seguranca SET geometria = ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), 4326)
WHERE id_seguranca = NEW.id_seguranca;
RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';

/* ************************ TRIGGER ************************ */
CREATE TRIGGER geometriaseguranca AFTER INSERT ON seguranca FOR EACH ROW
EXECUTE PROCEDURE inserirgeometriaseguranca(); 