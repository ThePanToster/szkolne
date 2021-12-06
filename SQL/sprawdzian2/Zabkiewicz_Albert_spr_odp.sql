1.
SELECT Imie, Nazwisko, NazwaSpecjalizacji FROM lekarze LEFT JOIN specjalizacje ON lekarze.IdSpecjalizacji=specjalizacje.IdSpecjalizacji WHERE NazwaSpecjalizacji = "Pediatra" OR NazwaSpecjalizacji = "Diabetolog" ORDER BY NazwaSpecjalizacji, Nazwisko, Imie;

2.
SELECT Imie, Nazwisko, NazwaSpecjalizacji, NrEwid FROM lekarze LEFT JOIN specjalizacje ON lekarze.IdSpecjalizacji=specjalizacje.IdSpecjalizacji ORDER BY NazwaSpecjalizacji, Nazwisko, Imie;

3.
SELECT count(*) AS "Liczba pacjentow" FROM wizyty RIGHT JOIN pacjenci ON wizyty.IdPacjenta = pacjenci.IdPacjenta WHERE IdWizyty IS NULL;

4.
SELECT count(*) FROM wizyty RIGHT JOIN lekarze ON wizyty.IdLekarza = lekarze.IdLekarza WHERE Nazwisko="Fachura" AND Imie="Zbigniew" AND year(DataWizyty)=2012 AND month(DataWizyty)>=1 AND month(DataWizyty)<=3;

5.
SELECT Nazwisko, Imie, Pesel, count(*) AS Ilosc FROM wizyty INNER JOIN pacjenci ON wizyty.IdPacjenta = pacjenci.IdPacjenta WHERE year(DataWizyty)=2011 AND month(DataWizyty)>=4 AND month(DataWizyty)<=6 GROUP BY Pesel HAVING Ilosc >= 5;