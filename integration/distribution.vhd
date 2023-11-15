library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity distribution is
port(
 clk,rst,p1,p2,p3,p4: in std_logic;
  distribuer : in std_logic ;
d1,d2,d3,d4: out std_logic;
fin: out std_logic 
 );end distribution ;

architecture arch of distribution is
--déclaration des etats nouveau type

type state is (debut,DP1,DP2,DP3,DP4,terminer);
signal etat_present ,etat_futur : state;

begin

-- mettre à jour les etats selon le calcule
R: process (clk, rst)
    begin
        if (rst ='1') then
      etat_present<=debut ;
      elsif(clk'event and clk ='1') then
      etat_present<=etat_futur ;
        end if;

 end process R ; 
 
 -- calcule d'etat futur 
F: process(etat_present,distribuer,p1,p2,p3,p4) 
 begin 
 case (etat_present) is  
 when debut => 
       if (distribuer ='1' )then
		if (p1 ='1') then
		etat_futur <=DP1 ; 
		elsif ( p2 ='1') then
		etat_futur <=DP2 ; 
	   elsif (  p3 ='1') then
		etat_futur <=DP3 ; 
		elsif (  p4='1') then
		etat_futur <=DP4 ; 
		
		end if ;
		end if ;
 when DP1 =>
 		etat_futur <=terminer ; 

 when DP2=> 
       etat_futur <=terminer ; 
 when DP3 => 
       etat_futur <=terminer ; 
 
 when DP4 =>
       etat_futur <=terminer ; 

 when terminer =>
       etat_futur <=debut; 
when others =>
       etat_futur <=terminer; 

 end case ;
 end process;
 --calcule des sortie
 S :process (etat_present)
 begin 
 case  (etat_present) is 
 when debut =>
				d1 <='0' ;
				d2 <='0' ;
				d3 <='0' ;
				d4 <='0' ;
				fin<='0' ;
 when DP1 => 
				d1 <='1' ;
				d2 <='0' ;
				d3 <='0';
				d4 <='0' ;
				fin<='0' ; 
 when DP2 =>
 				d1 <='0' ;
				d2 <='1' ;
				d3 <='0' ;
				d4 <='0' ;
				fin<='0' ; 
 
 when DP3 =>
 				d1 <='0' ;
				d2 <='0' ;
				d3 <='1' ;
				d4 <='0' ;
				fin<='0' ; 
 
 when DP4 =>
 				d1 <='0' ;
				d2 <='0' ;
				d3 <='0' ;
				d4 <='1' ;
				fin<='0' ; 
 
 when terminer => 
 				d1 <='0' ;
				d2 <='0' ;
				d3 <='0' ;
				d4 <='0' ;
				fin<='1' ; 
when others=> 
				d1 <='0' ;
				d2 <='0' ;
				d3 <='0' ;
				d4 <='0' ;
				fin<='0' ; 
 
 end case ;
 end process S;
 

 end arch ; 