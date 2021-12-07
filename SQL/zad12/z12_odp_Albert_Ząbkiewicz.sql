3.
a)
CREATE VIEW ModeleNazwy(model, producent, rocznik_pocz, rocznik_konc) AS SELECT modele.nazwa, producenci.nazwa, rocznik_pocz, rocznik_konc FROM modele JOIN producenci ON modele.id = producenci.id;

b)
SELECT count(*) AS 'Toyota' FROM ModeleNazwy WHERE producent='Toyota';

c)
SELECT model FROM ModeleNazwy WHERE producent='Toyota';

4.
a)
CREATE VIEW PracownicyInfo(pracownik, wyksztalcenie, staz_pracy, adres, kod_pocztowy, miejscowosc, wojewodztwo) AS SELECT concat(nazwisko, " ", imie), wyksztalcenie, stazpracy, adres, kod, miejscowosc, wojewodztwo FROM pracownicy JOIN pracownicychar ON pracownicy.nrident = pracownicychar.nrident;

b)
SELECT * FROM pracownicyinfo ORDER BY pracownik;

c)
SELECT count(*) AS wyzsze FROM pracownicyinfo WHERE wyksztalcenie = 'wyzsze';

5.
a)
CREATE VIEW PracownicyPrzydzialZadaniaProjekty(pracownik, wynagrodzenie, nazwa_projektu, dziedzina_projektu) AS SELECT concat(nazwisko, " ", imie), liczbagodzin*stawka, nazwa, dziedzina FROM pracownicy LEFT JOIN przydzial ON pracownicy.nrident = przydzial.nrident JOIN zadaniaprojekty ON przydzial.symbol = zadaniaprojekty.symbol;

b)
SELECT nazwa_projektu FROM pracownicyprzydzialzadaniaprojekty WHERE pracownik = 'Abacki Jan';

c)
SELECT sum(wynagrodzenie) FROM pracownicyprzydzialzadaniaprojekty;

d)
SELECT count(*) FROM pracownicyprzydzialzadaniaprojekty WHERE nazwa_projektu = 'Konserwacja i modernizacja systemu informacyjnego';