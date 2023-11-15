library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test2 is
end test2;

architecture arch of test2 is
    component Disponibilite
        Port (
		   clk : in STD_LOGIC;         
     rst : in STD_LOGIC;
	  charger : in STD_LOGIC;
	  C_dispo : in STD_LOGIC_VECTOR(11 downto 0) ;
	  M_dispo: in STD_LOGIC_VECTOR(11 downto 0) ;
	  dispo: out STD_LOGIC_VECTOR(11 downto 0)
	  );
	   end component;
    signal clk : STD_LOGIC := '0';
	 signal rst : STD_LOGIC := '0';
	 signal charger : STD_LOGIC:= '0';
	 signal C_dispo :STD_LOGIC_VECTOR(11 downto 0) ;
	 signal M_dispo :STD_LOGIC_VECTOR(11 downto 0) ;
	 signal dispo :STD_LOGIC_VECTOR(11 downto 0) ;
	 begin 
	 clk <= not clk after 10 ns;
	 --instancier le component
    DUT : Disponibilite port map (clk ,rst,charger,C_dispo,M_dispo,dispo);
    process
    begin
	 rst <= '1';
	 C_dispo<="111000111000";
		 M_dispo<="000111000111";
		 wait for 40 ns;
		 rst <= '0';
		 charger<='1';
		 C_dispo<="111000111000";
		 M_dispo<="000111000111";
		 wait for 20 ns ;
		 charger<='0';
		 C_dispo<="111000111000";
		 M_dispo<="000111000111";
		 wait for 20 ns ;
		 charger<='1';
		 C_dispo<="000111000111";
		 M_dispo<="111000111000";
		wait for 20 ns ;
		  charger<='1';
		 C_dispo<="111000111000";
		 M_dispo<="000111000111";
		 wait for 20 ns ;
		 charger<='0';
		 C_dispo<="111000111000";
		 M_dispo<="000111000111";
		 wait for 20 ns ;
		 charger<='0';
		 C_dispo<="000111000111";
		 M_dispo<="111000111000";
		  wait for 20 ns ;
		 charger<='1';
		  C_dispo<="000111000110";
		 M_dispo<="111000111010";
		 
		 
	 
	         wait;
    end process;

end arch;
