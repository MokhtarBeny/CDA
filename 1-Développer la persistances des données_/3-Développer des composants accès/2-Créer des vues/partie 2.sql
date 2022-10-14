-- Active: 1664366408140@@127.0.0.1@3306@papyrus
use papyrus;

CREATE VIEW v_GlobalCde
AS
select codart, sum(qtecde) as qtetot, (priuni*qtecde) as prixtot
FROM ligcom
group by codart;


select * from v_GlobalCde;


-----------------------------------------------------------
CREATE VIEW vujoin_VentesI100
as
select delliv, qte1, prix1, qte2, prix2, qte3, prix3, vente.numfou, ligcom.codart, qtecde
from vente
left join ligcom on vente.codart = ligcom.codart
WHERE ligcom.codart='I100';

select * from vujoin_VentesI100;

--------------------------------------------------------------

CREATE VIEW vujoin_VentesI100Grobrigan
as
select delliv, qte1, prix1, qte2, prix2, qte3, prix3, vente.numfou, ligcom.codart, qtecde
from vente
left join ligcom on vente.codart = ligcom.codart
WHERE ligcom.codart='I100'and numfou=120;

select * from vujoin_VentesI100Grobrigan;







