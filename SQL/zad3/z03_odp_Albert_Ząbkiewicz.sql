1.
SELECT datediff((SELECT data_wpisu FROM rejestry WHERE id=1),(SELECT data_wpisu FROM rejestry WHERE id=2)) AS roznica;

2.
SELECT floor(datediff(curdate(),(SELECT max(data_wpisu) FROM rejestry WHERE operacja=2))/365) AS rok, floor(datediff(curdate(),(SELECT max(data_wpisu) FROM rejestry WHERE operacja=2))/30) AS miesiac, datediff(curdate(),(SELECT max(data_wpisu) FROM rejestry WHERE operacja=2)) AS dzien;

3.
ALTER TABLE klienci ADD data_urodzenia date;
SELECT nazwa, floor(datediff(curdate(),data_urodzenia)/365) FROM klienci;