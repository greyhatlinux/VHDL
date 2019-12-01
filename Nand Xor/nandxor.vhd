LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY xor_gate IS
PORT( a,b: IN std_logic;
  c: OUT std_logic);
END logic_gates;

ARCHITECTURE beh OF xor_gate IS
BEGIN
 c<=a xor b;
END beh;