CREATE OR REPLACE PROCEDURE add_numbers (
    num1 IN NUMBER,
    num2 IN NUMBER,
    result OUT NUMBER
)
IS
BEGIN
    result := num1 + num2;
    DBMS_OUTPUT.PUT_LINE('The sum is: ' || result);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END add_numbers;
/

DECLARE
    result NUMBER;
BEGIN
    add_numbers(10, 20, result);
    DBMS_OUTPUT.PUT_LINE('Result from procedure: ' || result);
END;
/

<<dis_blok>>
DECLARE 
    sayi NUMBER := 10;
BEGIN
    <<ic_blok>>
    DECLARE
        sayi NUMBER := 5;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('İç bloktaki değer: ' || sayi);
    END;
    DBMS_OUTPUT.PUT_LINE('Dış bloktaki değer: ' || sayi);
END;
/

CREATE OR REPLACE PROCEDURE prosedur_adi (
    parametre1 IN VARCHAR2, 
    parametre2 OUT NUMBER    
)
IS
BEGIN
    
    parametre2 := LENGTH(parametre1); 

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END prosedur_adi;
/

DECLARE
    input_value VARCHAR2(50) := 'Test String';
    output_value NUMBER;
BEGIN
    prosedur_adi(input_value, output_value);
    DBMS_OUTPUT.PUT_LINE('Output Value: ' || output_value);
END;
/

DECLARE
    input_value VARCHAR2(100) := 'Hello, PL/SQL!';
    output_value NUMBER;
BEGIN
    prosedur_adi(input_value, output_value);
    DBMS_OUTPUT.PUT_LINE('The result is: ' || output_value);
END;
/

SELECT * FROM countries WHERE region_ID = 1;

DECLARE
    region_id NUMBER := 1;
BEGIN
    FOR rec IN (SELECT * FROM countries WHERE region_ID = region_id) LOOP
        DBMS_OUTPUT.PUT_LINE('Country: ' || rec.country_name);
    END LOOP;
END;
/

SET SERVEROUTPUT ON;


CREATE OR REPLACE PROCEDURE calculate_square (
    input_number IN NUMBER,
    result OUT NUMBER
)
IS
BEGIN
    result := input_number * input_number;
    DBMS_OUTPUT.PUT_LINE('Square of ' || input_number || ' is: ' || result);
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Invalid input. Provide a valid number.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END calculate_square;
/

DECLARE
    num NUMBER := 5;
    square_result NUMBER;
BEGIN
    calculate_square(num, square_result);
    DBMS_OUTPUT.PUT_LINE('The result is: ' || square_result);
END;
/
-- İç İçe Blok Örneği
<<dis_blok>>
DECLARE 
    sayi NUMBER := 10;
BEGIN
    <<ic_blok>>
    DECLARE
        sayi NUMBER := 5;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('İç bloktaki değer: ' || sayi);
    END;
    DBMS_OUTPUT.PUT_LINE('Dış bloktaki değer: ' || sayi);
END;