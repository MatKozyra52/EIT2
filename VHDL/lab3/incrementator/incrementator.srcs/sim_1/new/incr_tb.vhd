library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity incr_tb is
--  Port ( );
end incr_tb;

architecture Behavioral of incr_tb is
signal wej : STD_LOGIC_VECTOR (5 downto 0) := "111111";
signal wyj : STD_LOGIC_VECTOR (6 downto 0);
begin
UTT: entity work.incr port map (wej=>wej, wyj=>wyj);
end Behavioral;
