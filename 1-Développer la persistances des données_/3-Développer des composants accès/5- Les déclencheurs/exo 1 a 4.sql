-- Active: 1664366408140@@127.0.0.1@3306@hotel
#1
DELIMITER $

CREATE TRIGGER modif_reservation AFTER UPDATE ON reservation
FOR EACH ROW
BEGIN 
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Reservation non modifiable !';
END
$

DELIMITER ;


UPDATE reservation set res_prix=1000 where res_id=1;
---------------------------------------------------------------
#2

DELIMITER $

CREATE TRIGGER insert_reservation AFTER INSERT ON reservation
FOR EACH ROW
BEGIN 
IF (select COUNT(res_date)
from reservation
join chambre on chambre.cha_id = reservation.res_cha_id
join hotel on hotel.hot_id = chambre.cha_hot_id
where hot_id = (
    SELECT DISTINCT hot_id 
    from reservation
    join chambre on chambre.cha_id = reservation.res_cha_id
    join hotel on hotel.hot_id = chambre.cha_hot_id
    WHERE reservation.res_cha_id = NEW.res_cha_id
    )) > 10
THEN
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Ajout reservation impossible !';
END IF;

END
$

DELIMITER ;

INSERT into reservation(res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) values (1,1, '2017-01-10', '2017-07-01', '2017-07-15', 2000, 800)

-------------------------------------------------------------------------------------
#3

DELIMITER $

CREATE TRIGGER insert_reservation2 AFTER INSERT ON reservation
FOR EACH ROW
BEGIN 
IF (select COUNT(res_cli_id)
from reservation
join client on client.cli_id = reservation.res_cli_id
join chambre on chambre.cha_id = reservation.res_cha_id
join hotel on hotel.hot_id = chambre.cha_hot_id
where res_cli_id = (
    SELECT DISTINCT res_cli_id 
    from reservation
    join client on client.cli_id = reservation.res_cli_id
    join chambre on chambre.cha_id = reservation.res_cha_id
    join hotel on hotel.hot_id = chambre.cha_hot_id
    WHERE reservation.res_cli_id = NEW.res_cli_id
    )) > 3
THEN
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Ajout reservation impossible !';
END IF;

END
$

DELIMITER ;


INSERT into reservation(res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) values (1,6, '2017-01-10', '2017-07-01', '2017-07-15', 2000, 800)
;


drop Trigger insert_reservation2;


-----------------------------------------------------------------------------------
#4
DELIMITER $


CREATE TRIGGER insert_chambre AFTER INSERT ON chambre
FOR EACH ROW
BEGIN
DECLARE totalchambre int;
set totalchambre = (
SELECT SUM(cha_capacite)
from chambre
join hotel on hotel.hot_id = chambre.cha_hot_id
where hot_id = (select hot_id 
from chambre
join hotel on hotel.hot_id = chambre.cha_hot_id 
where cha_id = new.cha_id)
GROUP BY hot_nom);
IF totalchambre > 50 
THEN
SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Ajout reservation impossible !';
END IF;

END
$

DELIMITER ;


INSERT INTO  chambre(cha_hot_id, cha_numero, cha_capacite, cha_type) values (6, 203, 3, 1);



DROP TRIGGER insert_chambre;


