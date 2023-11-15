library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DistributionAutoProduit is
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
end DistributionAutoProduit;

architecture arch of DistributionAutoProduit is
begin
    process (clk, rst)
    begin
        if rst = '1' then
								p1 <= '0';
								 p2 <= '0';
								  p3 <= '0';
								   p4 <= '0';				
									request <= '0';
        elsif (clk'event and clk ='1') then
		  
		  if valide = '1'	and annuler='0' then
           case clavier is
                    when "0001" =>
                        p1 <= '1';
								 p2 <= '0';
								  p3 <= '0';
								   p4 <= '0';
						        request <= '1';
                    when "0010" =>
                           p1 <= '0';
								 p2 <= '1';
								  p3 <= '0';
								   p4 <='0';
									request <= '1';
                    when "0100" =>
                           p1 <= '0';
								 p2 <= '0';
								  p3 <= '1';
								   p4 <='0';
									request <= '1';
                    when "1000" =>
                          p1 <= '0';
								 p2 <= '0';
								  p3 <= '0';
								   p4 <= '1';
									request <= '1';
                    when others =>
                           p1 <= '0';
								 p2 <= '0';
								  p3 <= '0';
								   p4 <= '0';
									request <= '0';
                end case;
					else request <= '0';
					           p1 <= '0';
								 p2 <= '0';
								  p3 <= '0';
								   p4 <= '0';
				
					end if;
					end if;
    end process;
end arch;
