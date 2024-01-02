/* DDL (Data Definition language) */

use escuelait;

CREATE TABLE users (
	id INT AUTO_INCREMENT,
    username VARCHAR (20),
    userpass VARCHAR (20),
    
    #Reestricciones
    
    PRIMARY KEY (id), -- Campo relacional
    UNIQUE KEY (username) -- No se puede repetir el username
    
);

