library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity test4 is
end test4 ;
architecture arch of test4 is

component distribution is
port(
 clk,rst,p1,p2,p3,p4: in std_logic;
  distribuer : in std_logic ;
d1,d2,d3,d4: out std_logic ;
fin: out std_logic  
 );end component;
 signal clk,rst,p1,p2,p3,p4: std_logic :='0';
 signal distribuer : std_logic ;
 signal d1,d2,d3,d4:  std_logic ;
 signal fin :  std_logic  ;
 begin
    clk <= not clk after 20 ns;
    DUT : distribution port map (clk,rst,p1,p2,p3,p4,distribuer,d1,d2,d3,d4,fin);
    process
    begin

  

        rst <= '0';
		  distribuer<='1';
		  wait for 80 ns;
		  p1<='1' ;
		  wait for 40 ns;
		 p1<='0';
		 		  distribuer<='0';

		 		   wait for 40 ns;

		  p2<='1' ;
		  		  distribuer<='1';

		   wait for 40 ns;
			p1<='0';
			 p2<='0';
			 		  distribuer<='0';

			 		   wait for 40 ns;
		  distribuer<='1';

		  p3<='1' ;
		   wait for 40 ns;
			 p1<='0';
			 p2<='0';
		  p4<='0' ;
		  		  distribuer<='0';

		  		   wait for 40 ns;
		  distribuer<='1';

		  p4<='1' ;
		   wait for 40 ns;

	 
	 
	         wait;
    end process;

end arch;

