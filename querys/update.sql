use escuelait;


-- update users_data set userId = (select id from users where username = "Cristian") where email = "cristian@gmail.com";

update users_data set country = "Argentina";