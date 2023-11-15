library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity test3 is
end test3;

architecture arch of test3 is

    component gestion is
    port(
 clk,rst,p1,p2,p3,p4,request: in std_logic;
 dispo : in std_logic_vector (11 downto 0 ) ;
 M_dispo : out std_logic_vector (11 downto 0 ) ;
 alarme_repture_stock : out std_logic ; 
 distribuer : out std_logic 
 );end component;
signal clk,rst,p1,p2,p3,p4,request: std_logic := '0';
signal dispo :  std_logic_vector (11 downto 0 ) := "000000000000" ;
 signal M_dispo :  std_logic_vector (11 downto 0 ) ;
 signal alarme_repture_stock :  std_logic ; 
 signal distribuer :  std_logic ;

begin
    clk <= not clk after 10 ns;
    DUT : gestion port map ( clk,rst,p1,p2,p3,p4,request,dispo,M_dispo,alarme_repture_stock,distribuer);
    process
    begin
     

        rst <= '1'; 
		 dispo<="001001001010";
		 request<='0';

        wait for 40 ns;

        rst <= '0';
		  request<='1';
		  p1<='1';
		  wait for 20 ns;
		  p1 <= '0';
        request <= '0';
		  wait for 20 ns;
		  request<='1';
		  p2<='1';
		  wait for 20 ns;
		  p2 <= '0';
        request <= '0';
		  wait for 20 ns;
		  request<='1';
		  p3<='1' ; 
		  wait for 20 ns;
		  p3 <= '0';
        request <= '0';
		  wait for 20 ns;
		  request<='1';
		  p4<='1' ;
		  wait for 20 ns;
		  p4 <= '0';
        request <= '0';
		  wait for 20 ns;
		  
		  		 dispo<="001001001000";
        rst <= '0';
		  request<='1';
		  p1<='1';
		  wait for 20 ns;
		  p1 <= '0';
        request <= '0';
		  wait for 20 ns;
		   request<='1';
		  p4<='1' ;
		  wait for 20 ns;
		  p4 <= '0';
        request <= '0';


		  
		  

   
        wait;
    end process;

end arch;
