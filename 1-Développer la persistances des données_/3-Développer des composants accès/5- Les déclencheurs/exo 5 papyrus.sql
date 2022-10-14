-- Active: 1664366408140@@127.0.0.1@3306@papyrus
CREATE TABLE articles_a_commander (
    codart VARCHAR(4) REFERENCES produit(codart), 
    date date default now(), 
    qte int
);

DELIMITER $


CREATE Trigger commander_article AFTER UPDATE on produit
    FOR EACH ROW
    BEGIN
        IF new.stkphy < new.stkale THEN 
            DECLARE qte INT
            IF 
            SET qte = new.qte
            THEN 
    
            END IF;
        INSERT INTO articles_a_commander (codart , qte) values ( new.codart, stkale - stkphy);
    END IF;
    END $


DELIMITER ;




