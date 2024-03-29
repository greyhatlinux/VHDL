library ieee;
use ieee.std_logic_1164.all;

entity notGate is
   port( inPort  : in std_logic;
         outPort : out std_logic);
end notGate;

architecture func of notGate is
begin
   outPort <= not inPort;
end func;