library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity za44_tb is
--  Port ( );
end za44_tb;

architecture Behavioral of za44_tb is
signal clk, din, ds : std_logic := '0';
signal D, wyj : std_logic_vector(3 downto 0);

begin
uut: entity work.za44 PORT MAP (
    D=>D,
    clk=>clk,
    din =>din,
    ds=>ds,
    wyj=>wyj);
    
zegar: process begin
    clk<='1';
    wait for 10ns;
    clk<='0';
    wait for 10ns;
end process;

data: process begin
    din <= '0';
    wait for 20ns;
    D<="0101";
    wait for 25ns;
    din <= '1';
    wait for 20ns;
    din <= '0';
    wait;
    
end process;
end Behavioral;
