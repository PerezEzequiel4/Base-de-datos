use escuelait;

CREATE TABLE users_data(
	id INT AUTO_INCREMENT,
    userId INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    uid CHAR (13), 
    birth_date DATE,
    email VARCHAR(100),
    phone VARCHAR(20),
    country VARCHAR(50),
    
    # restricciones
    PRIMARY KEY (id),
    UNIQUE KEY (uid),
    UNIQUE KEY (email),
    UNIQUE KEY (last_name, first_name, birth_date, phone, country),
    FOREIGN KEY(userId) REFERENCES users(id)
    
);