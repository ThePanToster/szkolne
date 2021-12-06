1.
SELECT nazwisko, imie FROM uczniowie INNER JOIN klasy ON uczniowie.id_klasy=klasy.id_klasy WHERE year(dat_rozp_nauki)="2017" AND nazwa_klasy="3ct";

2.
SELECT nazwa_klasy, count(*) FROM uczniowie INNER JOIN klasy ON uczniowie.id_klasy=klasy.id_klasy WHERE year(dat_rozp_nauki)="2017" GROUP BY nazwa_klasy;

3.
SELECT nazwisko, nazwa FROM oceny RIGHT JOIN nauczyciele ON nauczyciele.id_nauczyciela=oceny.id_oceny INNER JOIN przedmioty ON przedmioty.id_przedmiotu=oceny.id_przedmiotu;

4.
SELECT nazwa, count(nazwisko) FROM oceny RIGHT JOIN nauczyciele ON nauczyciele.id_nauczyciela=oceny.id_oceny INNER JOIN przedmioty ON przedmioty.id_przedmiotu=oceny.id_przedmiotu GROUP BY nazwa ORDER BY nazwa;

5.
SELECT imie, nazwisko, count(id_obecnosci) FROM uczniowie RIGHT JOIN obecnosci ON uczniowie.id_ucznia = obecnosci.id_ucznia INNER JOIN klasy ON uczniowie.id_klasy = klasy.id_klasy WHERE nazwa_klasy = '3ct' AND id_rodzaj_obecnosci = 1 AND data BETWEEN '2017-09-01' AND '2018-06-25' GROUP BY uczniowie.id_ucznia;

6.
SELECT imie, nazwisko, count(id_obecnosci) FROM uczniowie RIGHT JOIN obecnosci ON uczniowie.id_ucznia = obecnosci.id_ucznia INNER JOIN klasy ON uczniowie.id_klasy = klasy.id_klasy WHERE nazwa_klasy = '3ct' AND id_rodzaj_obecnosci = 2 AND data BETWEEN '2017-09-01' AND '2018-06-25' GROUP BY uczniowie.id_ucznia;