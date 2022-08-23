CREATE USER 'woody_admin'@'176.96.231.209' IDENTIFIED BY 'admin';
CREATE USER 'woody_admin' IDENTIFIED BY 'admin';

CREATE DATABASE woodytoys_db;

GRANT ALL PRIVILEGES ON woodytoys_db.* TO 'woody_admin'@'176.96.231.209';
GRANT ALL PRIVILEGES ON woodytoys_db.* TO 'woody_admin';

USE woodytoys_db;

CREATE TABLE toys(
    id_toys INTEGER NOT NULL AUTO_INCREMENT,
    toyName CHAR(50) NOT NULL,
    toyPrice DECIMAL(8,2) NOT NULL,
    CONSTRAINT pk_toys PRIMARY KEY(id_toys)
);

INSERT INTO toys (toyName,toyPrice)
VALUES  ('White Horse',32.19),
        ('Ukulele',59.99),
        ('Train locomotive',128.49);
