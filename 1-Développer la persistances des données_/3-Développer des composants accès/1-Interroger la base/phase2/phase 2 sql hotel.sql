-- Active: 1664366408140@@127.0.0.1@3306@hotel

#1
select hot_nom, hot_ville 
from hotel ;

#2
select cli_nom, cli_prenom, cli_adresse, cli_ville
from client
where cli_nom='White';

#3
select sta_nom, sta_altitude
from station
where sta_altitude>1000;

#4
select cha_numero, cha_capacite
from chambre
WHERE cha_capacite>1;

#5
select cli_nom, cli_ville
from client
where cli_ville!='Londre';

select hot_nom, hot_ville, hot_categorie
from hotel
where hot_ville='Bretou' and hot_categorie>3;

-----------------------------------------------------

#7
select station.sta_nom, hotel.hot_nom, hotel.hot_categorie, hotel.hot_ville
from hotel 
join station on station.sta_id=hotel.hot_sta_id;

#8
select hotel.hot_nom, hotel.hot_categorie, hotel.hot_ville, chambre.cha_numero
from hotel 
join chambre on hotel.hot_id=chambre.cha_hot_id;

#9
select hotel.hot_nom, hotel.hot_categorie, hotel.hot_ville, chambre.cha_numero, chambre.cha_capacite
from hotel 
join chambre on hotel.hot_id=chambre.cha_hot_id
where cha_capacite>1 and hot_ville='Bretou';

#10
select client.cli_nom, hotel.hot_nom, reservation.res_date
from client
join reservation on client.cli_id=reservation.res_cli_id
join chambre on reservation.res_cha_id=chambre.cha_id
join hotel on chambre.cha_hot_id=hotel.hot_id;

#11 
select station.sta_nom, hotel.hot_nom, chambre.cha_numero, chambre.cha_capacite
from station
JOIN hotel on hotel.hot_sta_id=station.sta_id
join chambre on chambre.cha_hot_id=hotel.hot_id;

#12
select client.cli_nom, hotel.hot_nom, reservation.res_date_debut, datediff(reservation.res_date_fin,reservation.res_date_debut)
from client
join reservation on client.cli_id=reservation.res_cli_id
join chambre on chambre.cha_id=reservation.res_cha_id
join hotel on hotel.hot_id=chambre.cha_hot_id;

#13
select count(hotel.hot_id), station.sta_nom
from hotel
join station on station.sta_id=hotel.hot_sta_id
GROUP BY sta_nom ;

#14
select count(chambre.cha_id), station.sta_nom
from station 
join hotel on station.sta_id=hotel.hot_sta_id
join chambre on hotel.hot_id=chambre.cha_hot_id
group by sta_nom;

#15
select count(chambre.cha_id), station.sta_nom
from station 
join hotel on station.sta_id=hotel.hot_sta_id
join chambre on hotel.hot_id=chambre.cha_hot_id
where cha_capacite>1
group by sta_nom;

#16
select hotel.hot_nom, client.cli_nom, concat(reservation.res_id, reservation.res_cli_id)
from client
join reservation on client.cli_id=reservation.res_cli_id
join chambre on chambre.cha_id=reservation.res_cha_id
join hotel on hotel.hot_id=chambre.cha_hot_id
where cli_nom='Squire';

#17
select avg(datediff(reservation.res_date_fin,reservation.res_date_debut)), station.sta_nom
from station 
join hotel on station.sta_id=hotel.hot_sta_id
join chambre on hotel.hot_id=chambre.cha_hot_id
JOIN reservation on chambre.cha_id=reservation.res_cha_id
GROUP BY sta_nom;

