CREATE DATABASE METRO_CDMX

CREATE USER 'admin'@'localhost' IDENTIFIED BY '*****'

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost'; 

FLUSH PRIVILEGES;