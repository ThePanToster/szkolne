1)

CREATE TABLE uczniowie (
	id int(11) NOT NULL AUTO_INCREMENT, 
	nazwa varchar(50) NOT NULL, 
	adres varchar(100) NOT NULL, 
	miejscowosc varchar(100) NOT NULL,
	data_urodzenia DATE NOT NULL,
	data_rozp_nauki DATE NOT NULL,
	pesel varchar(11) NOT NULL,
	telefon varchar(15),
	jednostka_szkoly char(1) NOT NULL,
	czesne decimal(9,2) NOT NULL,
	data_wpisu datetime NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO uczniowie VALUES (
	1, 'Katarzyna Kotek', 'Rejtana 76/27', 'Sanok', '1991-03-12', '2008-09-01', '91031275446', '696 421 765', 'L', '399.00', '2008-08-15 13:16:09'
);

INSERT INTO uczniowie VALUES (
	2, 'Ewa Kowalska', 'Wiosenna 1', 'Rzeszów', '1990-05-06', '2008-09-01', '90050675446', '531 421 765', 'L', '399.00', '2008-08-15 13:21:09'
);

INSERT INTO uczniowie VALUES (
	3, 'Maria Janowska', 'Dąbrowskiego 35', 'Jasło', '1992-04-15', '2008-09-01', '92041575446', '691 257 890', 'L', '399.00', '2008-08-15 13:16:09'
);

INSERT INTO uczniowie VALUES (
	4, 'Jan Abacki', 'Paderewskiego 27', 'Krosno', '1989-03-11', '2008-09-01', '89031199123', NULL, 'L', '399.00', '2008-08-24 09:09:18'
);

INSERT INTO uczniowie VALUES (
	5, 'Piotr Nowak', 'Pola 5/63', 'Rzeszów', '1989-07-29', '2008-09-01', '89072979441', '616 294 172', 'T', '499.00', '2008-08-15 13:16:09'
);

INSERT INTO uczniowie VALUES (
	6, 'Edward Janik', 'Wiosenna 1', 'Rzeszów', '1990-08-18', '2008-09-01', '90081889551', '636 246 171', 'T', '499.00', '2008-08-16 13:17:09'
);

INSERT INTO uczniowie VALUES (
	7, 'Henryk Marecki', 'Brzozowa 10', 'Krosno', '1991-09-22', '2008-09-01', '91092289551', '501 123 315', 'T', '499.00', '2008-08-16 13:28:15'
);

INSERT INTO uczniowie VALUES (
	8, 'Joanna Nowak', 'Jesienna 7/8', 'Sanok', '1992-11-16', '2008-09-01', '92111689654', NULL, 'T', '499.00', '2008-08-16 13:38:03'
);

INSERT INTO uczniowie VALUES (
	9, 'Anna Kowalska', 'Piłsudskiego 10/37', 'Krosno', '1995-10-01', '2000-09-01', '12345678901', '123 456 789', 'T', '499.00', '2017-10-03 21:38:50'
);

INSERT INTO uczniowie VALUES (
	10, 'Marta Kowalska', 'Pola 5/63', 'Rzeszów', '1995-10-23', '2000-09-01', '12345678901', '123 456 789', 'T', '499.00', '2017-10-03 21:39:00'
);


2)

SELECT concat(left(right(nazwa, length(nazwa) - locate(' ', nazwa)),1), left(nazwa,1), '_', lower(right(nazwa, length(nazwa) - locate(' ', nazwa))), lower(left(nazwa,1))) FROM uczniowie;

3)

SELECT nazwa, year(now()) - year(data_urodzenia) AS wiek FROM uczniowie WHERE right(left(nazwa, locate(' ', nazwa)-1), 1) != 'a';


5)

SELECT IF(right(left(nazwa, locate(' ', nazwa)-1), 1) != 'a', 'mezczyzna', 'kobieta') FROM uczniowie WHERE miejscowosc like 'Krosno' OR miejscowosc like 'Rzeszow';