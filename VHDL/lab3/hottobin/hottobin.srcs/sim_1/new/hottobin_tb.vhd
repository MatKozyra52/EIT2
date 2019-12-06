
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity hottobin_tb is
--  Port ( );
end hottobin_tb;

architecture Behavioral of hottobin_tb is
signal hot : STD_LOGIC_VECTOR (7 downto 0);
signal bin : STD_LOGIC_VECTOR (2 downto 0);
begin
UTT: entity work.hottobin port map (bin=>bin, hot=>hot);

process begin
        hot<= "01000000";
        wait for 10 ns;
        hot<= "00000010";
        wait for 10 ns;
        hot<= "00000001";
        wait for 10 ns;
        hot<= "10000000";
        wait for 10 ns;
end process;

end Behavioral;
