/*ADD DATA INTO CINEMA TABLE*/
INSERT INTO cinema (name, address, telephone) VALUES ('Mita', '140 rue de la Castelle Montpellier', '0125195794');
INSERT INTO cinema (name, address, telephone) VALUES ('Topicware', '25 avenue du 8 mai Lattes', '0108085066');
INSERT INTO cinema (name, address, telephone) VALUES ('BlueJam', '14 rue Jean Jaurès Frontignan', '0153625974');



/*EMPLOYEE*/
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Mélodie', 'Llewelyn', 'pllewelyn0@ibm.com', '$2y$10$mBaAXY4nxqZp5K4Vuc6lNOTJzqUsaCi3E8utNGbyQO2gkF9dbKJRa', 1);
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Yú', 'Rainbow', 'wrainbow1@army.com', '$2y$10$OOywbKy/rXJOTE7b.3bR5.Z0RHIuxNXirXkj4mR6uj.F324dK0pOa', 1);
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Håkan', 'Grimsley', 'fgrimsley2@geocities.com', '$2y$10$d40SmhbKMnJmEqwipnkpRuIutOgK7.tbbOl99Z/dqtebG3blALbO6', 2);
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Noémie', 'Farman', 'ofarman3@ucoz.com', '$2y$10$zWaxE9YMISogAVBJJ2f1C.DYYmiy36T8653hKGZ9mTvgr5KHZTh3a', 2);
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Dù', 'Doge', 'mdoge4@creativecommons.org', '$2y$10$QL59Klg3NdO.qm8GsYQOuOfdmvVjdPyHXpNiowWDFtRI2JWnC3MTe', 3);
INSERT INTO employee (firstName, lastName, email, password, works_for) VALUES ('Eloïse', 'Haquin', 'lhaquin5@list-manage.com', '$2y$10$9b3O/Q2NF3QnJ35N26WsGOTBnEkLnvFo1WTtMkaLxyBiFeaqlknqS', 3);

-- ONCE EMPLOYEES ARE CREATED, I CAN ADD WHO'S ADMINISTRATING THE CINEMAS
UPDATE cinema SET admin_by = 1 WHERE cinema.id = 1;
UPDATE cinema SET admin_by = 3 WHERE cinema.id = 2;
UPDATE cinema SET admin_by = 5 WHERE cinema.id = 3;

/*PRICE*/
INSERT INTO price (name, price) VALUES ('Plein tarif', '9.20');
INSERT INTO price (name, price) VALUES ('Etudiant', '7.60');
INSERT INTO price (name, price) VALUES ('- 14 ans', '5.90');


/*CLIENT*/
INSERT INTO client (id) VALUES (1);
INSERT INTO client (id) VALUES (2);
INSERT INTO client (id) VALUES (3);
INSERT INTO client (id) VALUES (4);
INSERT INTO client (id) VALUES (5);
INSERT INTO client (id) VALUES (6);

/*ROOM*/
-- CINEMA1
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Cassiopé3D',300,1);
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Opela',200,1);
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Treeflex',100,1);
-- CINEMA2
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Biodex',80,2);
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Asoka',70,2);
-- CINEMA3
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Alpha',150,3);
INSERT INTO room (name, numberOfSeats, cinema_id) VALUES ('Beta',120,3);


/*MOVIE*/
INSERT INTO movie (title, duration) VALUES ('Infernal Affairs 2 (Mou gaan dou II)',138);
INSERT INTO movie (title, duration) VALUES ('Le Corbeau (The Raven)', 120);
INSERT INTO movie (title, duration) VALUES ('Blues Brothers 2000', 130);
INSERT INTO movie (title, duration) VALUES ('Action Jackson', 78);
INSERT INTO movie (title, duration) VALUES ('Wonder Man', 90);
INSERT INTO movie (title, duration) VALUES ('Dreamworld', 126);


/*SESSION*/
-- FILM1 (est diffusé dans tous les cinéma et en même temps dans le cinéma Mita)
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('28/08/2021 20:30','%d/%m/%Y %H:%i'),1,1);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('28/08/2021 20:30','%d/%m/%Y %H:%i'),2,1);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('28/08/2021 20:00','%d/%m/%Y %H:%i'),4,1);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('28/08/2021 20:00','%d/%m/%Y %H:%i'),6,1);
-- FILM2
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('12/08/2021 18:00','%d/%m/%Y %H:%i'),1,2);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('12/08/2021 17:00','%d/%m/%Y %H:%i'),5,2);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('12/08/2021 17:00','%d/%m/%Y %H:%i'),6,2);
-- FILM3
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('17/08/2021 20:30','%d/%m/%Y %H:%i'),3,3);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('17/08/2021 20:00','%d/%m/%Y %H:%i'),4,3);
-- FILM4
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('21/08/2021 20:30','%d/%m/%Y %H:%i'),3,4);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('21/08/2021 20:00','%d/%m/%Y %H:%i'),5,4);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('21/08/2021 20:00','%d/%m/%Y %H:%i'),7,4);
-- FILM5
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('26/08/2021 20:30','%d/%m/%Y %H:%i'),2,5);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('26/08/2021 20:00','%d/%m/%Y %H:%i'),5,5);
-- FILM6
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('29/08/2021 16:30','%d/%m/%Y %H:%i'),5,6);
INSERT INTO session (date, room_id, movie_id) VALUES (STR_TO_DATE('29/08/2021 16:30','%d/%m/%Y %H:%i'),7,6);

/*RESERVATION*/
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('01/08/2021 09:30','%d/%m/%Y %H:%i'),'En ligne',1,1);
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('01/08/2021 12:48','%d/%m/%Y %H:%i'),'En ligne',2,2);
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('05/08/2021 18:25','%d/%m/%Y %H:%i'),'En ligne',3,1);
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('09/08/2021 11:27','%d/%m/%Y %H:%i'),'En ligne',4,8);
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('12/08/2021 13:56','%d/%m/%Y %H:%i'),'En ligne',5,13);
INSERT INTO reservation (dateReservation, payment_method, client_id, session_id) VALUES (STR_TO_DATE('12/08/2021 21:28','%d/%m/%Y %H:%i'),'En ligne',6,5);


------------ HOW TO BACK UP / RESTORE THE DATABASE ? ------------
/*Once my DB created with all informations into it, I can make a backup into an SQL file with the command mysqldump
I quit mysql from my terminal with the command 'exit', then I can tap this one into the destination folder to save all my previous SQL:
mysqldump -u root -p UGD --complete-insert --result-file=UGD_DB.SQL
If I need to restore all my DB, I can easyly run this command to restore it:
mysqldump -u root -p UGD < UGD_DB.SQL
*/


