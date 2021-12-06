a)
SELECT miejscowosc, count(*) FROM uczniowie WHERE miejscowosc IS NOT NULL GROUP BY miejscowosc;

b)
SELECT count(*) AS Ilosc_uczniow FROM uczniowie INNER JOIN klasy ON uczniowie.id_klasy=klasy.id_klasy WHERE klasy.nazwa_klasy='4ct';

c)
SELECT IF(uczniowie.plec='K','Dziewczyny','Chlopaki') AS Plec, count(uczniowie.plec) AS Ilosc FROM uczniowie INNER JOIN klasy ON uczniowie.id_klasy=klasy.id_klasy WHERE klasy.nazwa_klasy='4ct' GROUP BY uczniowie.plec;

d)
SELECT nazwisko, imie, nazwa_klasy, avg() AS srednia FROM uczniowie LEFT JOIN oceny ON uczniowie.id_ucznia=oceny.id_ucznia INNER JOIN klasy ON uczniowie.id_klasy=klasy.id_klasy WHERE klasy.nazwa_klasy='4ct';