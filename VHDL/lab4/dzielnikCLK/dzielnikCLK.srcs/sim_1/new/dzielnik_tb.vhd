
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dzielnik_tb is
--  Port ( );
end dzielnik_tb;

architecture Behavioral of dzielnik_tb is
signal clk, wyj : std_logic;
begin
uut: entity work.dzielnikclk PORT MAP (
    clk => clk,
    wyj => wyj);

klok: process
begin
clk<='0';
wait for 10ns;
clk<='1';
wait for 10ns;
end process;

end Behavioral;
