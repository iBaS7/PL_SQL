DECLARE
    sayi NUMBER(8,2);
    karakter CHAR(1);
    dizge NVARCHAR2(100);
    durum BOOLEAN;
    zaman_araligi INTERVAL YEAR(2) TO MONTH;
BEGIN
    -- Sayı Atamaları
    sayi := 1234.56;
    DBMS_OUTPUT.put_line('Sayi: ' || TO_CHAR(sayi));

    -- Karakter Ataması
    karakter := 'A';
    DBMS_OUTPUT.put_line('Karakter: ' || karakter);

    -- Dizge Karşılaştırma
    dizge := 'PL/SQL';
    IF UPPER(dizge) = 'PL/SQL' THEN
        DBMS_OUTPUT.put_line('Bu metinler eşittir.');
    ELSE
        DBMS_OUTPUT.put_line('Bu metinler eşit değildir.');
    END IF;

    -- Boolean Değeri
    durum := FALSE;
    IF durum = FALSE THEN
        DBMS_OUTPUT.put_line('Durum: FALSE');
    END IF;

    -- Interval Kullanımı
    zaman_araligi := INTERVAL '3' YEAR;
    DBMS_OUTPUT.put_line('Zaman Araligi (Yıl): ' || zaman_araligi);

    zaman_araligi := INTERVAL '8' MONTH;
    DBMS_OUTPUT.put_line('Zaman Araligi (Ay): ' || zaman_araligi);
END;