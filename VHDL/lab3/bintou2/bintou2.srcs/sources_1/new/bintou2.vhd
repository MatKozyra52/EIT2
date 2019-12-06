library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bintou2 is
    Port ( bin : in STD_LOGIC_VECTOR (2 downto 0);
           u2 : out STD_LOGIC_VECTOR (3 downto 0));
end bintou2;

architecture Behavioral of bintou2 is
signal du2 : STD_LOGIC_VECTOR (3 downto 0);
begin
du2(0)<=bin(0);
du2(1)<=bin(1) xor bin(0);
du2(2)<=(bin(2) and not bin(1) and not bin(0)) or (not bin(2) and (bin(0) or bin(1)));
du2(3)<=bin(2) or bin(1) or bin(0);
u2<=du2;
end Behavioral;
