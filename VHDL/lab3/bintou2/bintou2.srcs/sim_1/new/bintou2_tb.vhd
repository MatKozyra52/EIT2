
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bintou2_tb is
--  Port ( );
end bintou2_tb;

architecture Behavioral of bintou2_tb is
signal bin : STD_LOGIC_VECTOR (2 downto 0):= "010";
signal u2 : STD_LOGIC_VECTOR (3 downto 0);
begin
UTT: entity work.bintou2 port map (bin=>bin, u2=>u2);

process begin
        bin<= "011";
        wait for 10 ns;
        bin<= "001";
        wait for 10 ns;
        bin<= "001";
        wait for 10 ns;
        bin<= "101";
        wait for 10 ns;
end process;
     
end Behavioral;
