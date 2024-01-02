/* DDL (Data Definition Language) */

#Tabla editoriales
CREATE TABLE publishers(
	id INT AUTO_INCREMENT,
    description VARCHAR(50),
    
    PRIMARY KEY (id),
    UNIQUE KEY(description)
);

#Tabla autores
CREATE TABLE authors(
	id INT AUTO_INCREMENT,
    description VARCHAR(50),
    
    PRIMARY KEY (id),
    UNIQUE KEY(description)
);


#Tabla Generos Literarios
CREATE TABLE literary_genres(
	id INT AUTO_INCREMENT,
	description VARCHAR(50),
    
    PRIMARY KEY (id),
    UNIQUE KEY(description)
);

#Tabla editoriales libros
CREATE TABLE books (
	id INT AUTO_INCREMENT,
    description VARCHAR(50),
    stock INT UNSIGNED NOT NULL, -- UNSIGNED NO PERMITE NEGATIVOS
    price DECIMAL(11,2) UNSIGNED NOT NULL,
    edition INT(4) DEFAULT 1,
    
    PRIMARY KEY (id),
    UNIQUE KEY (description)
);

#Tabla comprobante alquiler
CREATE TABLE books_rent(
	id INT AUTO_INCREMENT,
    userId INT,
	rent_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- Cargo un valor predeterminado
    return_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(11,2),
    
    PRIMARY KEY(id),
	FOREIGN KEY(userId) REFERENCES users(id)
);

#Table detalle de alquiler
CREATE TABLE books_rent_detail( 
	id INT AUTO_INCREMENT,
    books_rent_id INT,
    book INT,
    price DECIMAL(11,2),
    returned BOOLEAN DEFAULT FALSE,
    
    PRIMARY KEY(id),
    UNIQUE KEY(books_rent_id, book),
	FOREIGN KEY(books_rent_id) REFERENCES books_rent(id),
    FOREIGN KEY(book)	REFERENCES books(id)
)