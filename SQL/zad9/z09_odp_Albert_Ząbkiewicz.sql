1.
SELECT * FROM zadaniaprojekty WHERE dziedzina LIKE 'zarzadzanie' OR dziedzina LIKE 'informatyka';

2.
SELECT DISTINCT imie, nazwisko FROM pracownicy JOIN przydzial ON pracownicy.NrIdent = przydzial.NrIdent WHERE miejscowosc LIKE 'Rzeszow' AND symbol LIKE 'P1';

3.
SELECT imie, nazwisko FROM pracownicy INNER JOIN pracownicychar ON pracownicy.NrIdent = pracownicychar.NrIdent ORDER BY stazpracy LIMIT 8;

4.
SELECT imie, nazwisko FROM pracownicy INNER JOIN pracownicychar ON pracownicy.NrIdent = pracownicychar.NrIdent WHERE wojewodztwo LIKE 'podkarpackie' AND (stazpracy>10 OR wyksztalcenie LIKE 'wyzsze');