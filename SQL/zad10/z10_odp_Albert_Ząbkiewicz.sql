1.
SELECT imie, nazwisko FROM pracownicy RIGHT JOIN pracownicychar ON pracownicy.nrident=pracownicychar.nrident WHERE wyksztalcenie='wyzsze' AND stazpracy BETWEEN 5 AND 10;
2.
SELECT nazwa FROM zadaniaprojekty WHERE datarozp <= '2010-11-01' AND datazakon >= '2010-11-30';
3.
SELECT nazwa FROM zadaniaprojekty WHERE datarozp BETWEEN '2010-01-01' AND '2010-03-31';
4.
SELECT nazwa FROM zadaniaprojekty WHERE datazakon IS NOT NULL;
5.
SELECT wyksztalcenie, avg(stazpracy),min(stazpracy),max(stazpracy) FROM pracownicychar GROUP BY wyksztalcenie;
6.
SELECT nazwa, sum(stawka*liczbagodzin) as wynagrodzenia, sum(liczbagodzin) AS godziny FROM zadaniaprojekty RIGHT JOIN przydzial ON zadaniaprojekty.symbol=przydzial.symbol GROUP BY nazwa ORDER BY wynagrodzenia;
7.
SELECT nazwa, sum((stawka-2)*liczbagodzin) AS suma FROM zadaniaprojekty RIGHT JOIN przydzial ON zadaniaprojekty.symbol=przydzial.symbol GROUP BY nazwa ORDER BY suma;
8.
SELECT nazwa, avg(stawka) FROM zadaniaprojekty RIGHT JOIN przydzial ON zadaniaprojekty.symbol=przydzial.symbol GROUP BY nazwa;
9.
SELECT nazwa FROM zadaniaprojekty RIGHT JOIN przydzial ON zadaniaprojekty.symbol=przydzial.symbol WHERE liczbagodzin > 200;
10.
UPDATE przydzial SET stawka=stawka*1.1 WHERE symbol='P2';
11.
INSERT INTO zatrudnieni SELECT * FROM pracownicy;
12.
CREATE TABLE rzeszowiacy SELECT * FROM pracownicy WHERE miejscowosc LIKE "rzeszow";
13.
INSERT INTO rzeszowiacy SELECT * FROM pracownicy WHERE wojewodztwo LIKE "podkarpackie" AND miejscowosc NOT LIKE "rzeszow";
14.
DELETE FROM rzeszowiacy WHERE nazwisko BETWEEN 'A' AND 'J';
15.
CREATE TABLE zestawienie SELECT imie, nazwisko FROM pracownicy WHERE wojewodztwo LIKE "podkarpackie" UNION SELECT imie, nazwisko FROM pracownicy2 WHERE wojewodztwo LIKE "podkarpackie";
16.
CREATE TABLE wszyscy SELECT * FROM pracownicy WHERE wojewodztwo LIKE "podkarpackie";