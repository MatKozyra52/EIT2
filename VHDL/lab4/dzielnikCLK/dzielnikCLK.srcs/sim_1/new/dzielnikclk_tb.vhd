

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dzielnikclk_tb is
--  Port ( );
end dzielnikclk_tb;

architecture Behavioral of dzielnikclk_tb is
signal clk, wyj: std_logic;
begin
uut: entity work.dzielnikclk PORT MAP (
    clk=>clk,
    wyj=>wyj);
    
clock: process begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;

end Behavioral;