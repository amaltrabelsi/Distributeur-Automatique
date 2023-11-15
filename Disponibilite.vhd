library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--definir l'interface (E/S)
entity Disponibilite is
    Port (
	  clk : in STD_LOGIC;         
     rst : in STD_LOGIC;
	  charger : in STD_LOGIC;
	  C_dispo : in STD_LOGIC_VECTOR(11 downto 0) ;
	  M_dispo: in STD_LOGIC_VECTOR(11 downto 0) ;
	  dispo: out STD_LOGIC_VECTOR(11 downto 0)
	 );
end Disponibilite ;
architecture arch of Disponibilite  is
begin
--réagit aux changements du clk et rst
process (clk, rst)
    begin
        if rst = '1' then
 dispo <= M_dispo;       
 elsif (clk'event and clk ='1') then
            if charger = '1' then
              dispo <= C_dispo;
				  else 
				  dispo <= M_dispo;

            end if;
        end if;
    end process;
   
end arch;
