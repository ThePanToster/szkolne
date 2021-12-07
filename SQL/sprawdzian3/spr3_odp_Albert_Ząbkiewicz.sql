1.
SELECT imie, nazwisko FROM pracownicy LEFT JOIN przydzial ON pracownicy.NrIdent = przydzial.NrIdent WHERE symbol IS NULL;
2.
SELECT imie, nazwisko, count(numer) FROM przydzial RIGHT JOIN pracownicy ON pracownicy.NrIdent = przydzial.NrIdent GROUP BY pracownicy.NrIdent ORDER BY nazwisko;
3.
SELECT concat(zadaniaprojekty.symbol,". ",nazwa) as projekt, count(imie LIKE '%a') AS kobiety, count(imie NOT LIKE '%a') AS menzczyzni FROM przydzial JOIN zadaniaprojekty ON zadaniaprojekty.symbol=przydzial.symbol JOIN pracownicy ON pracownicy.NrIdent = przydzial.NrIdent WHERE wojewodztwo LIKE "podkarpackie" OR wojewodztwo LIKE "lubelskie" OR wojewodztwo IS NULL GROUP BY zadaniaprojekty.symbol;
4.
SELECT symbol, count(pracownicy.NrIdent) AS 'liczba kobiet' FROM pracownicy RIGHT JOIN przydzial ON pracownicy.NrIdent = przydzial.NrIdent INNER JOIN pracownicychar ON pracownicy.NrIdent = pracownicychar.NrIdent WHERE imie LIKE '%a' AND KolPrzydzDoProj=0 AND wyksztalcenie LIKE 'wyzsze' GROUP BY symbol;
5.
SELECT zadaniaprojekty.symbol, nazwa, count(numer) AS osoby FROM przydzial JOIN zadaniaprojekty ON zadaniaprojekty.symbol=przydzial.symbol GROUP BY zadaniaprojekty.symbol HAVING osoby > 2;

3r.
SELECT concat(zadaniaprojekty.symbol,". ",nazwa) as projekt, count(imie LIKE '%a') AS kobiety, count(imie NOT LIKE '%a') AS menzczyzni FROM przydzial JOIN zadaniaprojekty ON zadaniaprojekty.symbol=przydzial.symbol JOIN pracownicy ON pracownicy.NrIdent = przydzial.NrIdent WHERE wojewodztwo LIKE "podkarpackie" OR wojewodztwo LIKE "lubelskie" OR wojewodztwo IS NULL GROUP BY zadaniaprojekty.symbol;