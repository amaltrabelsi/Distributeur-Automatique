library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity distributeur is
port(
 clk,rst,charger,valide,annuler: in std_logic;
 C_dispo : in std_logic_vector (11 downto 0 ) ;
 clavier: in std_logic_vector (3 downto 0 ) ;
 alarme_repture_stock,d1,d2,d3,d4,fin : out std_logic 
 );end distributeur;

architecture arch of distributeur is

-- Bloc 1 
component DistributionAutoProduit 
    Port (
        clk : in STD_LOGIC;         
        rst : in STD_LOGIC;        
        clavier : in STD_LOGIC_VECTOR(3 downto 0); 
        valide : in STD_LOGIC; 
        annuler : in STD_LOGIC;  
        request : out STD_LOGIC;   
        p1 : out STD_LOGIC;
		  p2 : out STD_LOGIC;
		  p3 : out STD_LOGIC;
		  p4 : out STD_LOGIC
    );
end component;

-- Bloc 2 

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

--Bloc 3

component gestion 
port(
 clk,rst,p1,p2,p3,p4,request: in std_logic;
 dispo : in std_logic_vector (11 downto 0 ) ;
 M_dispo : out std_logic_vector (11 downto 0 ) ;
 alarme_repture_stock : out std_logic ; 
 distribuer : out std_logic 
 );end component;
 
 --Bloc 4

component distribution 
port(
 clk,rst,p1,p2,p3,p4: in std_logic;
  distribuer : in std_logic ;
d1,d2,d3,d4: out std_logic;
fin: out std_logic 
 );end component ; 
 
 signal dis ,M_dis: std_logic_vector(11 downto 0);
 signal p1,p2,p3,p4,request,distribuer : std_logic ; 
 
 begin
 
bloc1 :  DistributionAutoProduit port map (  clk=>clk,rst =>rst,clavier =>clavier,valide =>valide,
																	annuler =>annuler
,request =>request, p1=>p1, p2 => p2, p3 =>p3,  p4=> p4 ) ;
 
bloc2 :  Disponibilite port map (  clk=> clk,rst=>rst, charger =>charger, C_dispo=>C_dispo, M_dispo=>M_dis, dispo=>dis) ;
 
bloc3:  gestion port map (clk=>clk,rst =>rst, p1=>p1, p2 => p2, p3 =>p3,p4=> p4 ,request=>request,
										dispo=>dis, M_dispo=>M_dis, alarme_repture_stock =>alarme_repture_stock,distribuer=>distribuer ) ;
 
bloc4: distribution port map (clk=>clk,rst =>rst, p1=>p1, p2 => p2, p3 =>p3,p4=> p4 ,
														distribuer=>distribuer,d1=>d1,d2=>d2,d3=>d3,d4=>d4 ,fin=>fin) ;

 
 
end arch;



