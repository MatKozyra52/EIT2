
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity komparator is
    Port ( liczba1 : in STD_LOGIC_VECTOR (3 downto 0);
           liczba2 : in STD_LOGIC_VECTOR (3 downto 0);
           rowne : out STD_LOGIC;
           mniejsza1 : out STD_LOGIC;
           wieksza1 : out STD_LOGIC);
end komparator;

architecture Behavioral of komparator is
signal row, wie, mnie : STD_LOGIC_VECTOR (3 downto 0);
signal rowny, wiekszy : STD_LOGIC;
begin

---rowne----------
row(0)<=not(liczba1(0) xor liczba2(0));
row(1)<=not (liczba1(1) xor liczba2(1));
row(2)<= not (liczba1(2) xor liczba2(2));
row(3)<= not (liczba1(3) xor liczba2(3));
rowny <= row(0) and row(1) and row(2) and row(3);
rowne <= rowny;
--------------------------------------
-----------wieksze---------------------
wie(3)<=liczba1(3) and not liczba2(3);
wie(2)<=liczba1(2) and not liczba2(2) and row(3);
wie(1)<=liczba1(1) and not liczba2(1) and row(3) and row(2);
wie(0)<=liczba1(0) and not liczba2(0) and row(3) and row(2) and row(1);
wiekszy <= wie(3) or wie(2) or wie(1) or wie(0);
wieksza1<=wiekszy;

mniejsza1<= not (wiekszy or rowny);
end Behavioral;
