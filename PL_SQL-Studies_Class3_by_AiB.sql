DECLARE

sayi number(8,2);
karakter char(1);
dizge NVARCHAR2 (100);
durum BOOLEAN;

tarih DATE;
zaman_araligi INTERNAL YEAR(2) TO MONTH;

BEGIN
/*
sayi := 1234.56;
sayi := -1234.56;
sayi := +1234.56;
sayi := 12E4;
sayi := 1.23f;
sayi := 12d;

karakter := 'a';

dizge := 'Dizeler tek tirnak icinde yazilmalidir.';
-- dizge := "Dizgeler tek tirnak icinde yazilmaalidir."; -- HATA

dizge := 'PL/SQL';

IF dizge = 'pl/sql' then
DBMS_OUTPUT.put_line ('Bu metinler e?ittir');
ELSE
DBMS_OUTPUT.put_line ('Bu metinler e?it degildir.');
END IF;

durum := NULL;
durum := TRUE;
durum := FALSE;
DBMS_OUTPUT.put_line ('Durum degiskenin degeri' || durum); -- HATA

IF durum = FALSE THEN
DBMS_OUTPUT.put_line (FALSE);
END IF;

*/

zaman_araligi := INTERVAL '3' YEAR;
DBMS_OUTPUT.put_line (zaman_araligi);
zaman_araligi := INTERVAL '8' MONTH;
DBMS_OUTPUT.put_line (zaman_araligi);



END;