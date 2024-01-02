/* DML (Data Manipulation Language) */

use escuelait;

#Carga Completa

INSERT INTO users VALUES (0,"ronickkkk","root");

#Carga Selectiva

INSERT INTO users(username,userpass) VALUES ("eze","123");

#Carga Multiple de Usuario

INSERT into users (userpass,username) VALUES ("alpha","abel"), ("bett4","brian"), ("g4mm4","carlos");