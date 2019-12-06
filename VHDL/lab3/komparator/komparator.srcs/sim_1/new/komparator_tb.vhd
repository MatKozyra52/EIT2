
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity komparator_tb is
--  Port ( );
end komparator_tb;

architecture Behavioral of komparator_tb is
           signal liczba1 :  STD_LOGIC_VECTOR (3 downto 0) := "0010";
           signal liczba2 :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           signal rowne :  STD_LOGIC;
           signal mniejsza1 : STD_LOGIC;
           signal wieksza1 :  STD_LOGIC;
begin
UTT: entity work.komparator port map(liczba1=>liczba1 , liczba2=>liczba2, rowne=>rowne, mniejsza1=>mniejsza1, wieksza1=>wieksza1); 

end Behavioral;
