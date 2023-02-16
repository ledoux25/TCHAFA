SET SERVEROUTPUT ON;
DECLARE

    sector_name varchar(50);
    search_result VARCHAR(50);
    v_sector secteur%ROWTYPE;

    PROCEDURE select_sector(ss IN VARCHAR) AS
        BEGIN
            SELECT * INTO v_sector
            FROM secteur
            WHERE secteur_id = ss;
            DBMS_OUTPUT.PUT_LINE(v_menu.secteur_id ||'   '||v_sector.secteur_nom);
        END;
        
        