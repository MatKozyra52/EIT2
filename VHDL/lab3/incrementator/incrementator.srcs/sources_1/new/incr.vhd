library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity incr is
    Port ( wej : in STD_LOGIC_VECTOR (5 downto 0);
           wyj : out STD_LOGIC_VECTOR (6 downto 0));
end incr;

architecture Behavioral of incr is
signal s, c : std_logic_vector (6 downto 0) := "0000000";

begin
    s(0) <= wej(0) xor '1';
    c(0) <= wej(0) and '1';
    s(1) <= wej(1) xor c(0);
    c(1) <= wej(1) and c(0);
    s(2) <= wej(2) xor c(1);
    c(2) <= wej(2) and c(1);
    s(3) <= wej(3) xor c(2);
    c(3) <= wej(3) and c(2);    
    s(4) <= wej(4) xor c(3);
    c(4) <= wej(4) and c(3);    
    s(5) <= wej(5) xor c(4);
    c(5) <= wej(5) and c(4);    
    s(6) <= c(5);
    wyj<=s;
end Behavioral;
