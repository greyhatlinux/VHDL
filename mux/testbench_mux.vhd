LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux4_tb IS
END mux4_tb;

ARCHITECTURE mux4_tb OF mux4_tb IS 

    COMPONENT mux4
    PORT(
         d0 : IN  bit;
         d1 : IN  bit;
         d2 : IN  bit;
         d3 : IN  bit;
         s0 : IN  bit;
         s1 : IN  bit;
         y : OUT  bit
        );
    END COMPONENT;
    
   signal d0 : bit := '1';
   signal d1 : bit := '0';
   signal d2 : bit := '1';
   signal d3 : bit := '0';
   signal s0 : bit := '0';
   signal s1 : bit := '0';
   signal y : bit;

BEGIN

   uut: mux4 PORT MAP (
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3,
          s0 => s0,
          s1 => s1,
          y => y
        ); 

 stim_proc: process
 begin  

 s0 <= '0';
 s1 <= '0';
 wait for 50 ns;

 s0 <= '0';
 s1 <= '1';
 wait for 50 ns;

 s0 <= '1';
 s1 <= '0';
 wait for 50 ns;

 s0 <= '1';
 s1 <= '1';
 wait;

 end process;

END;