library ieee;
use ieee.std_logic_1164.all;

entity notGate_tb is
end notGate_tb;

architecture tb of notGate_tb is
   component notGate is	
      port( inPort  : in std_logic;
           outPort  : out std_logic);
   end component;

   signal  goIn, goOut : std_logic;
begin
   mapping: notGate port map( goIn, goOut);

   process
     
      variable errCnt : integer := 0;
   begin
      
      goIn <= '0';
      wait for 15 ns;
      assert(goOut = '1') report "Error 1" severity error;
      if(goOut /= '1') then
         errCnt := errCnt + 1;
      end if;

     
      goIn <= '1';
      wait for 15 ns;
      assert(goOut = '0') report "Error 2" severity error;
      if(goOut /= '0') then
         errCnt := errCnt + 1;
      end if;

      if(errCnt = 0) then
         assert false report "Good!"  severity note;
      else
         assert true report "Error!"  severity error;
      end if;

   end process;
end tb;
configuration cfg_tb of notGate_tb is
   for tb
   end for;
end cfg_tb;