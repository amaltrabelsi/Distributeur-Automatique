library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
end test;

architecture arch of test is
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
    signal clk : STD_LOGIC := '0';
    signal rst, valide, annuler : STD_LOGIC := '0';
    signal clavier : STD_LOGIC_VECTOR(3 downto 0):= "0001";
    signal request : STD_LOGIC;
    signal p1 : STD_LOGIC;
	signal p2 : STD_LOGIC;
	signal p3 :STD_LOGIC;
	signal p4 : STD_LOGIC;
begin
    clk <= not clk after 10 ns;
    DUT : DistributionAutoProduit port map (clk ,rst,clavier, valide,annuler, request, p1,p2,p3,p4 );
    process
    begin
        rst <= '1';
		 wait for 40 ns;
		 rst <= '0';
		  --P1
        clavier <= "0001";
        valide <= '1';
        wait for 20 ns;
        valide <= '0';
		  annuler <= '0';
		  wait for 20 ns;

        --P2
        clavier <= "0010";
        valide <= '1';
        wait for 20 ns;
        valide <= '0';
		  annuler <= '0';
		  wait for 20 ns;
        -- P3
        clavier <= "0100";
        valide <= '1';
        wait for 20 ns;
        valide <= '0';
		  annuler <= '0';
		  wait for 20 ns;
		  --P4
        clavier <= "1000";
        valide <= '1';
        wait for 20 ns;
        valide <= '0';
		  annuler <= '0';
		  wait for 20 ns;
        annuler <= '1';
        wait for 20 ns;
        annuler <= '0';

        wait;
    end process;

end arch;
