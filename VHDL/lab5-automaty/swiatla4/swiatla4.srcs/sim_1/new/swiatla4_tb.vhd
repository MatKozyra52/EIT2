

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity swiatla4_tb is
--  Port ( );
end swiatla4_tb;

architecture Behavioral of swiatla4_tb is
signal clk, czerw, ziel , pom : std_logic:='0';
begin
UTT: entity work.swiatla4 port map (clk => clk,
                                    czerw => czerw,
                                    ziel=>ziel,
                                    pom=>pom);

process begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
end process;

end Behavioral;
