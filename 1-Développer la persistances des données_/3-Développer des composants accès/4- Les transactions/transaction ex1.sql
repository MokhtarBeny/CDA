-- Active: 1664366408140@@127.0.0.1@3306@papyrus
START TRANSACTION;

SELECT nomfou FROM fournis WHERE numfou=120;


UPDATE fournis  SET nomfou= 'GROSBRIGAND' WHERE numfou=120 ;

COMMIT;

ROLLBACK;

SELECT nomfou FROM fournis WHERE numfou=120 ;

select numfou from fournis WHERE numfou=120;


