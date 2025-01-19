DECLARE
    sayi1 NUMBER := 2018;
    sayi2 NUMBER := 2019;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Sayi1: ' || sayi1);
    DBMS_OUTPUT.PUT_LINE('Sayi2: ' || sayi2);
END;
/

DECLARE
yil Number := 2023;
KITAP VARCHAR2 (50) := 'Oracle PL/SQL Programlama';
BEGIN
DBMS_Output.Put_Line(kitap || ' - ' || YIL);
END;
/

DECLARE
    ders_adi VARCHAR2(75); 
    ders_kodu VARCHAR2(75); 
    program_adi NVARCHAR2(50); 
    numara10 CHAR(50); 
    son_kullanma_tarihi NVARCHAR2(50); 
    public_variable CHAR(50); 
    urun_adi VARCHAR2(100); 
    TurkiyeninNufusu NUMBER(13); 
    urun_fiyati NUMBER(8,2) := 150.25; 
    islev NUMBER(8,2);
BEGIN
    
    ders_adi := 'PL/SQL Programlama';
    ders_kodu := 'PLSQL101';
    program_adi := 'Oracle Eğitimi';
    numara10 := 'Değer';
    son_kullanma_tarihi := '2025-12-31';
    public_variable := 'Public Value';
    urun_adi := 'Ürün Adı';
    TurkiyeninNufusu := 85000000;
    islev := 200.50;

    -- Çıktılar
    DBMS_OUTPUT.PUT_LINE('Ders Adı: ' || ders_adi);
    DBMS_OUTPUT.PUT_LINE('Ders Kodu: ' || ders_kodu);
    DBMS_OUTPUT.PUT_LINE('Program Adı: ' || program_adi);
    DBMS_OUTPUT.PUT_LINE('Numara10: ' || numara10);
    DBMS_OUTPUT.PUT_LINE('Son Kullanma Tarihi: ' || son_kullanma_tarihi);
    DBMS_OUTPUT.PUT_LINE('Public Variable: ' || public_variable);
    DBMS_OUTPUT.PUT_LINE('Ürün Adı: ' || urun_adi);
    DBMS_OUTPUT.PUT_LINE('Türkiyenin Nüfusu: ' || TurkiyeninNufusu);
    DBMS_OUTPUT.PUT_LINE('İşlev: ' || islev);
END;
/

DECLARE
ulke_kodu CHAR(3);
ulke_adi NVARCHAR2(50);
BEGIN
SELECT country_id, country_name INTO ulke_kodu, ulke_adi FROM countries WHERE Country_id ='JP';
dbms_output.put_line ('Ulke kodu: ' || ulke_kodu || ', ulke adi:' || ulke_adi);
END;
/

DECLARE
    ulke VARCHAR2(10) := 'TÜRKİYE';
BEGIN
    dbms_output.put_line(ulke);
END;
/
DECLARE
    "ULKE" VARCHAR2(10) := 'TÜRKİYE';
BEGIN
    dbms_output.put_line(ulke);
END;
/

DECLARE
    a_number NUMBER(4) := 5;
    a_float FLOAT(8) := 6;
BEGIN
    dbms_output.put_line(a_number);
    dbms_output.put_line(a_float);
END;
/

-- Dis blok
DECLARE
    a NUMBER(4) := 5;
BEGIN
-- Ic blok
    BEGIN
        DBMS_OUTPUT.PUT_LINE('a degeri: ' || a);
    END;
END;
/

-- Dis blok
DECLARE
    a NUMBER(4) := 5;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Dis bloktaki a degeri: ' || a);
-- Ic blok
DECLARE
a NUMBER(4) := 10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Ic bloktaki a degeri: ' || a);
    END;
END;
/

DECLARE
    a NUMBER(4);
BEGIN
    a := 10;

BEGIN
dbms_output.put_line('a degeri (inner block): ' || a);
END;
dbms_output.put_line('a degeri (outer block): ' || a);
END;
/

<< dis_blok >>
DECLARE
a NUMBER(4) := 5;
BEGIN
dbms_output.put_line('a degeri: ' || a);
DECLARE
a NUMBER(4) := 10;
BEGIN
dbms_output.put_line('Ic bloktaki a degeri: ' || a);
dbms_output.put_line('Dis bloktaki a degeri: ' || dis_blok.a);
END;
dbms_output.put_line('a degeri: ' || a);
END;
/

<< dis_blok >>
DECLARE
    a_dis_blok NUMBER(4) := 5;
BEGIN
    dbms_output.put_line('Dis bloktaki a degiskeni: ' || a_dis_blok);

    << ic_blok >>
    DECLARE
        a_ic_blok NUMBER(4) := 10;
    BEGIN
        dbms_output.put_line('Ic bloktaki a degiskeni: ' || a_ic_blok);
        dbms_output.put_line('Dis bloktaki a degiskeni: ' || a_dis_blok);
    END;

    dbms_output.put_line('Dis bloktaki a degiskeni tekrar: ' || a_dis_blok);
END;
/

DECLARE
   ulke NVARCHAR2(10) := 'TÜRKİYE';
   ulkemiz NVARCHAR2(10) := 'Türkiye';
BEGIN
   IF UPPER(ulke) = UPPER(ulkemiz) THEN
      DBMS_OUTPUT.PUT_LINE('The values are equal (case-insensitive).');
   ELSE
      DBMS_OUTPUT.PUT_LINE('The values are different.');
   END IF;
END;
/

DECLARE
   cift_tirnakli VARCHAR2(50) := 'Çift "tırnak" kullanılabilir.';
   tek_tirnakli VARCHAR2(50) := 'Tek tırnak '' böyle kullanılır.';
BEGIN
   DBMS_OUTPUT.PUT_LINE(cift_tirnakli);
   DBMS_OUTPUT.PUT_LINE(tek_tirnakli);
END;
/

DECLARE
   metin1 CHAR(20) := 'Oracle PL/SQL';
   metin2 VARCHAR(20) := 'Oracle PL/SQL';
BEGIN
   IF TRIM(metin1) = metin2 THEN
      DBMS_OUTPUT.PUT_LINE('Bu metinler eşittir.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Bu metinler eşit değildir.');
   END IF;
END;
/

DECLARE
kacis_karakteri1 NVARCHAR2(150);
kacis_karakteri2 NVARCHAR2(150);
kacis_karakteri3 NVARCHAR2(150);
BEGIN
kacis_karakteri1 := 'Dizgi icinde tirnak karakteri varsa '' bu baska bir tirnak ile perdelenmedlidir.';
dbms_output.put_line(kacis_karakteri1);
kacis_karakteri2 := q'!Türkiye'nin 81 ili vardir.!';
dbms_output.put_line(kacis_karakteri2);
kacis_karakteri3 := Q'#Istanbul'un yedi tepesi vardir.#';
dbms_output.put_line(kacis_karakteri3);
END;
/


DECLARE
    ogrenci_no       NUMBER(13);
    ogrenci_adi      NVARCHAR2(80);
    ogrenci_soyadi   NVARCHAR2(80);
    kayit_durumu     BOOLEAN := TRUE;
    ogrenci_fakulte  VARCHAR2(50) NOT NULL := 'SIRUS GALAKTIK IMAMHATIP FAK. U.';
    sayi1            NUMBER := 5;
    sayi2            NUMBER := sayi1 * 2;
    kayit_durumu_str VARCHAR2(5); 
BEGIN
   
    kayit_durumu := FALSE;

    
    IF kayit_durumu THEN
        kayit_durumu_str := 'True';
    ELSE
        kayit_durumu_str := 'False';
    END IF;

    
    DBMS_OUTPUT.PUT_LINE('Öğrenci Fakülte: ' || ogrenci_fakulte);
    DBMS_OUTPUT.PUT_LINE('Sayı 1: ' || sayi1 || ', Sayı 2: ' || sayi2);
    DBMS_OUTPUT.PUT_LINE('Kayıt Durumu: ' || kayit_durumu_str);
END;
/

DECLARE
pi CONSTANT NUMBER (6, 4):= 3.14159;
BEGIN
-- pi := 3.14; -- Hata
DBMS_Output.put_line(pi);
END;