
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pierscionek_Johna_tb is
--  Port ( );
end pierscionek_Johna_tb;

architecture Behavioral of pierscionek_Johna_tb is
signal clk : std_logic :='0';
signal wyj_p, wyj_j : std_logic_vector (3 downto 0);
begin
    uut: entity work.pierscionek_Johna PORT MAP (
    clk=>clk,
    wyj_p => wyj_p,
    wyj_j => wyj_j
    );
    
klok: process 
begin
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
end process;
    
end Behavioral;
