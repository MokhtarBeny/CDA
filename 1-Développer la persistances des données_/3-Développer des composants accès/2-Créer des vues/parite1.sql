-- Active: 1664366408140@@127.0.0.1@3306@hotel
CREATE VIEW v_hotel_et_station
AS
SELECT * FROM hotel, station;

SELECT * from v_hotel_et_station;
--------------------------------------------------------------
CREATE VIEW vu_hotel_et_chambre
AS
SELECT * FROM hotel, chambre;

SELECT * from vu_hotel_et_chambre;
---------------------------------------------------------------
CREATE VIEW vu_res_nomclient
AS
select *from client, reservation
;

SELECT * from vu_res_nomclient
;
---------------------------------------------------------------

CREATE VIEW vu_chambre_nomhotel_nomstation
AS
SELECT cha_numero, hot_nom, sta_nom from chambre, hotel, station
;


SELECT * FROM vu_chambre_nomhotel_nomstation;

------------------------------------------------------------------

CREATE VIEW vu_reservation_nomhotel_nomclient
AS
SELECT res_id, res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes, cli_nom, hot_nom from reservation, hotel, client
;

SELECT * FROM vu_reservation_nomhotel_nomclient;

-------------------------------------------------------------------



