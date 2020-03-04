--------- LISTING 4.3.1 --- Using an aggregate in a select expression.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY bin2sevenseg IS
    PORT (
        bin : IN std_logic_vector(3 DOWNTO 0);
        sseq : OUT std_logic_vector(6 DOWNTO 0));
END bin2sevenseg;
ARCHITECTURE selected OF bin2sevenseg IS
BEGIN
    WITH std_logic_vector'(bin) SELECT
    sseq <=
        DIG_0 WHEN "0000", --0
        DIG_1 WHEN "0001", --1
        DIG_2 WHEN "0010", --2
        DIG_3 WHEN "0011", --3
        DIG_4 WHEN "0100", --4
        DIG_5 WHEN "0101", --5
        DIG_6 WHEN "0110", --6
        DIG_7 WHEN "0111", --7
        DIG_8 WHEN "1000", --8
        DIG_9 WHEN "1001", --9
        DIG_A WHEN "1010", --10
        DIG_B WHEN "1011", --11
        DIG_C WHEN "1100", --12
        DIG_D WHEN "1101", --13
        DIG_E WHEN "1110", --14
        DIG_F WHEN "1111", --15
        '0' WHEN OTHERS;
    -- default assignment
END selected;
LIBRARY ieee;

-------- LISTING 4.8.2 --- Description of a BCD to seven-segment decoder. 

USE ieee.std_logic_1164.ALL;
ENTITY bcd_7seg IS
    PORT (
        bi_bar : IN std_logic; -- blanking input
        lt_bar : IN std_logic; -- lamp test input
        dcba : IN std_logic_vector (3 DOWNTO 0); --BCD input
        seg : OUT std_logic_vector(6 DOWNTO 0) -- segments in order from a to g
    );
END bcd_7seg;
ARCHITECTURE conditional OF bcd_7seg IS
BEGIN
    seg <= "1111111" WHEN bi_bar = '0' ELSE
        "0000000" WHEN lt_bar = '0' ELSE
        "0000001" WHEN (dcba = "0000") ELSE
        "1001111" WHEN (dcba = "0001") ELSE
        "0010010" WHEN (dcba = "0010") ELSE
        "0000110" WHEN (dcba = "0011") ELSE
        "1001100" WHEN (dcba = "0100") ELSE
        "0100100" WHEN (dcba = "0101") ELSE
        "1100000" WHEN (dcba = "0110") ELSE
        "0001111" WHEN (dcba = "0111") ELSE
        "0000000" WHEN (dcba = "1000") ELSE
        "0001100" WHEN (dcba = "1001") ELSE
        "-------";
    END conditional;