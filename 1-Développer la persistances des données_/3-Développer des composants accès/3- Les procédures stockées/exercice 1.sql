-- Active: 1664366408140@@127.0.0.1@3306@papyrus
DELIMITER |
CREATE PROCEDURE lst_fournis()
BEGIN
        select fournis.numfou, entcom.numcom
        from fournis
        join entcom on fournis.numfou=entcom.numfou;

end
|



DELIMITER ;

CALL lst_fournis;


SHOW CREATE PROCEDURE lst_fournis;