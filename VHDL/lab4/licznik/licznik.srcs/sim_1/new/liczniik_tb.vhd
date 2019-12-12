
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity liczniik_tb is
--  Port ( );
end liczniik_tb;

architecture Behavioral of liczniik_tb is
signal clk, R , CE : std_logic := '0';
signal q : std_logic_vector(3 downto 0) := "0000";
begin
uut: entity work.licznik PORT MAP (
 R => R,
 CLK => CLK,
 CE => CE,
 Q => Q );
 
 clk_process: process
    begin
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
end process;

reset : process
    begin
    wait for 100ns;
    R <= '1';
    wait for 30ns;
    R<='0';
    wait;
end process;

eneble_clock : process
    begin
    wait for 30ns;
    CE <= '1';
    wait for 300ns;
    CE<='0';
end process;
end Behavioral;
