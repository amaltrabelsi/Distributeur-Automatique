library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity test is
end test;

architecture arch of test is
component distributeur is
port(
 clk,rst,charger,valide,annuler: in std_logic;
 C_dispo : in std_logic_vector (11 downto 0 ) ;
 clavier: in std_logic_vector (3 downto 0 ) ;
 alarme_repture_stock,d1,d2,d3,d4,fin : out std_logic 
 );end component;

  signal clk,rst,charger,valide,annuler:  std_logic :='0';
 signal C_dispo :  std_logic_vector (11 downto 0 );
 signal clavier:  std_logic_vector (3 downto 0 ):="0000" ;
 signal alarme_repture_stock,d1,d2,d3,d4,fin :  std_logic ;
begin
 clk <= not clk after 25 ns;
    DUT : distributeur port map ( clk,rst,charger,valide,annuler,C_dispo,clavier,alarme_repture_stock,d1,d2,d3,d4,fin );
    process
    begin
	 
	 rst <= '1'; 
	  C_dispo <= "000111111111";
	  charger<='1';
	 valide<='0';
	 annuler<='0';
      wait for 100 ns;
	rst <= '0';
	C_dispo <= "000111111111"; 
	 charger<='1';
wait for 100ns ;
      valide<='1';
		charger<='0';
		annuler<='0';
		clavier<="0010";
		 wait for 100ns ; 
		 valide<='0';
		 wait for 100ns ;
	   rst <= '0'; 
      valide<='1';
		charger<='0';
		annuler<='0';
		clavier<="0001";
		 wait for 100ns ; 
		 valide<='0';
		 wait for 100ns ;
      valide<='0';
		charger<='0';
		annuler<='1';
		clavier<="0100";

		 wait for 100ns ;
		  annuler<='1';
		 wait for 100ns ;
		valide<='1';
		charger<='0';
		annuler<='0';
		clavier<="1000";
		 wait for 100ns ;
		 valide<='0';
		 wait for 100ns ;
	   
	 wait ;
	 end process;
	 
end arch ; 