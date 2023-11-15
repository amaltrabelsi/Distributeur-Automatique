library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity gestion is
port(
 clk,rst,p1,p2,p3,p4,request: in std_logic;
 dispo : in std_logic_vector (11 downto 0 ) ;
 M_dispo : out std_logic_vector (11 downto 0 ) ;
 alarme_repture_stock : out std_logic ; 
 distribuer : out std_logic 
 );end gestion;

architecture arch of gestion is
begin
 process(clk,rst)
 begin
  if(rst = '1') then
  M_dispo<= dispo ; 
  alarme_repture_stock<='0';
   distribuer<='0';
	
  elsif(clk'event and clk = '1') then
  
	if (request='1') then
				if (p1 ='1') then 
				if dispo (2 downto 0) > "000"  	then
				M_dispo(2 downto 0) <= dispo (2 downto 0) - "001" ;
				distribuer<='1';
				alarme_repture_stock <='0' ; 
				else 
				alarme_repture_stock <='1' ; 
				distribuer<='0';
				M_dispo(2 downto 0)<= dispo(2 downto 0) ; 
				 end if ;
				 end if ;
				 if (p2 ='1' ) then 
				if  dispo (5 downto 3) > "000"   then
				 M_dispo(5 downto 3) <=dispo (5 downto 3) -"001" ;
				 distribuer<='1';
				 alarme_repture_stock <='0' ; 
				 else 
				 alarme_repture_stock <='1' ; 
				 distribuer<='0';
				 M_dispo(5 downto 3)<= dispo(5 downto 3); 
				 end if ;
				 end if ;
					 
				if (p3 ='1') then 
				if dispo (8 downto 6) >"000" 	then
				M_dispo(8 downto 6) <=dispo (8 downto 6) - "001" ;
				distribuer<='1';
				alarme_repture_stock <='0' ; 
				else 
				alarme_repture_stock <='1' ; 
				distribuer<='0';
				M_dispo(8 downto 6)<= dispo(8 downto 6) ; 
				end if ;
				end if ;
				if (p4 ='1') then 
				if dispo (11 downto 9) >"000"  then
				M_dispo(11 downto 9) <= dispo (11 downto 9) - "001" ;
				distribuer<='1';
				alarme_repture_stock <='0' ; 
				else 
				alarme_repture_stock <='1' ; 
				distribuer<='0';
				M_dispo(11 downto 9) <= dispo(11 downto 9)  ; 
				end if ;

				end if ;
				else 
				alarme_repture_stock <='0' ; 
				distribuer<='0';
				M_dispo <= dispo ;
  end if;
end if;
  end process;
end arch;



