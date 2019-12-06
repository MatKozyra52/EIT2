library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumator is
    Port ( wej1 : in STD_LOGIC_VECTOR (5 downto 0);
           wej2 : in STD_LOGIC_VECTOR (5 downto 0);
           wyj : out STD_LOGIC_VECTOR (5 downto 0);
           przep : out std_logic);
end sumator;

architecture Behavioral of sumator is

signal s, c : std_logic_vector (5 downto 0);

begin
    s(0)<=wej1(0) xor wej2(0);
    c(0)<= (wej1(0) and wej2(0)) or (wej1(0) xor wej2(0));
        
    s(1)<=wej1(1) xor wej2(1) xor c(0);
    c(1)<= (wej1(1) and wej2(1)) or (c(0) and (wej1(1) xor wej2(1)));
    s(2)<=wej1(2) xor wej2(2) xor c(1);
    c(2)<= (wej1(2) and wej2(2)) or (c(1) and (wej1(2) xor wej2(2)));
    s(3)<=wej1(3) xor wej2(3) xor c(2);
    c(3)<= (wej1(3) and wej2(3)) or (c(2) and (wej1(3) xor wej2(3)));
    s(4)<=wej1(4) xor wej2(4) xor c(3);
    c(4)<= (wej1(4) and wej2(4)) or (c(3) and (wej1(4) xor wej2(4)));
    s(5)<=wej1(5) xor wej2(5) xor c(4);
    c(5)<= (wej1(5) and wej2(5)) or (c(4) and (wej1(5) xor wej2(5)));
    
    przep<=c(5);
    wyj<=s;
    
end Behavioral;
