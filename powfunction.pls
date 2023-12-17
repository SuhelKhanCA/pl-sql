CREATE OR REPLACE PROCEDURE calculate_power(
    p_base IN NUMBER,
    p_exponent IN NUMBER,
    p_result OUT NUMBER
)
IS
BEGIN
    -- Ensure that the base and exponent are not null or negative
    IF p_base IS NOT NULL AND p_exponent IS NOT NULL AND p_base >= 0 THEN
        -- Calculate the power using the POWER function
        p_result := POWER(p_base, p_exponent);
    ELSE
        -- If input is invalid, set the result to NULL
        p_result := NULL;
    END IF;
END;
/

DECLARE
    base_value NUMBER := 2; -- Replace with your desired base value
    exponent_value NUMBER := 3; -- Replace with your desired exponent value
    result_value NUMBER;
BEGIN
    calculate_power(base_value, exponent_value, result_value);
    DBMS_OUTPUT.PUT_LINE('Result: ' || result_value);
END;
/
