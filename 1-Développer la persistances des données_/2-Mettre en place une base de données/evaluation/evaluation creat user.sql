CREATE USER 'util1'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'util2'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'util3'@'localhost' IDENTIFIED BY '1234';

DROP USER 'util1'@'localhost';

GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'localhost';

GRANT SELECT ON papyrus.* TO 'util2'@'localhost';

GRANT SELECT ON papyrus.fournis TO 'util3'@'localhost';




