describe books;

#Carga multiple de libros

insert into books (description,stock,price)
values("El fantasma de Canterville",150,3999.99),
	  ("Cien años de soledad",200,5400),
      ("El ultimo de los mohicanos",320,1999.99),
      ("El principito",230,630),
      ("Dracula",3000,1288);


## Ultimo Libro guardado

SELECT * from books
ORDER BY stock, price -- Ordena ascendentemente (el asc es por default), por stock y si se iguala, por precio
LIMIT 3 -- Cantidad de resultados a mostrar
OFFSET 0 -- A partir de que posicion quiero empezar a recorrer (0 por default)
      