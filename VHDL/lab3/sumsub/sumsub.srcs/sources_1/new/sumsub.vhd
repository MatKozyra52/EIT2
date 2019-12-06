
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumsub is
    Port ( licz1 : in STD_LOGIC_VECTOR (4 downto 0);
           syg : in STD_LOGIC;
           wynik : out STD_LOGIC_VECTOR (4 downto 0);
           nadmiar : out STD_LOGIC);
end sumsub;

architecture Behavioral of sumsub is
signal u2trzy, trzy, dod, s, c : STD_LOGIC_VECTOR (4 downto 0);

begin
u2trzy<="11101";    --takie sta³e
trzy<="00011";

---MUX-------
dod(0)<=(syg and trzy(0)) or (not syg and u2trzy(0));
dod(1)<=(syg and trzy(1)) or (not syg and u2trzy(1));
dod(2)<=(syg and trzy(2)) or (not syg and u2trzy(2));
dod(3)<=(syg and trzy(3)) or (not syg and u2trzy(3));
dod(4)<=(syg and trzy(4)) or (not syg and u2trzy(4));

-----SUMATOR--------------
    s(0)<=licz1(0) xor dod(0);
    c(0)<= (licz1(0) and dod(0)) or (licz1(0) xor dod(0));
        
    s(1)<=licz1(1) xor dod(1) xor c(0);
    c(1)<= (licz1(1) and dod(1)) or (c(0) and (licz1(1) xor dod(1)));
    s(2)<=licz1(2) xor dod(2) xor c(1);
    c(2)<= (licz1(2) and dod(2)) or (c(1) and (licz1(2) xor dod(2)));
    s(3)<=licz1(3) xor dod(3) xor c(2);
    c(3)<= (licz1(3) and dod(3)) or (c(2) and (licz1(3) xor dod(3)));
    s(4)<=licz1(4) xor dod(4) xor c(3);
    c(4)<= (licz1(4) and dod(4)) or (c(3) and (licz1(4) xor dod(4)));
    
    wynik<=s;
    
----PRZEPELNIENIE ----------
nadmiar <= not (syg xor c(4));
    
end Behavioral;
