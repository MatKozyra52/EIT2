
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity liczniik_tb is
--  Port ( );
end liczniik_tb;

architecture Behavioral of liczniik_tb is
signal clk, R : std_logic := '0';
signal q : std_logic_vector(3 downto 0) := "0000";
begin
uut: entity work.licznik PORT MAP (
 R => R,
 CLK => CLK,
 Q => Q );
 
 clk_process: process
    begin
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
end process;

end Behavioral;
