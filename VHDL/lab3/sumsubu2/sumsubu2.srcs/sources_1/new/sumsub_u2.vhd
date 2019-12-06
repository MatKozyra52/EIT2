
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumsub_u2 is
    Port ( licz1u2 : in STD_LOGIC_VECTOR (3 downto 0);
           licz2u2 : in STD_LOGIC_VECTOR (3 downto 0);
           syg : in STD_LOGIC;
           wynik : out STD_LOGIC_VECTOR (3 downto 0);
           nadmiar : out STD_LOGIC);
end sumsub_u2;

architecture Behavioral of sumsub_u2 is
signal bin, dod, s, c : STD_LOGIC_VECTOR (3 downto 0);

begin
--------------2ga liczba na binarke--------------do odejmowania---------------
bin(0)<=licz2u2(0);
bin(1)<=licz2u2(1) xor licz2u2(0);
bin(2)<=(licz2u2(2) and not licz2u2(1) and not licz2u2(0)) or (not licz2u2(2) and (licz2u2(0) or licz2u2(1)));
bin(3)<=licz2u2(2) or licz2u2(1) or licz2u2(0);    


---MUX-------
dod(0)<=(syg and licz2u2(0)) or (not syg and bin(0));
dod(1)<=(syg and licz2u2(1)) or (not syg and bin(1));
dod(2)<=(syg and licz2u2(2)) or (not syg and bin(2));
dod(3)<=(syg and licz2u2(3)) or (not syg and bin(3));

-----SUMATOR--------------
    s(0)<=licz1u2(0) xor dod(0);
    c(0)<= (licz1u2(0) and dod(0)) or (licz1u2(0) xor dod(0));
        
    s(1)<=licz1u2(1) xor dod(1) xor c(0);
    c(1)<= (licz1u2(1) and dod(1)) or (c(0) and (licz1u2(1) xor dod(1)));
    s(2)<=licz1u2(2) xor dod(2) xor c(1);
    c(2)<= (licz1u2(2) and dod(2)) or (c(1) and (licz1u2(2) xor dod(2)));
    s(3)<=licz1u2(3) xor dod(3) xor c(2);
    c(3)<= (licz1u2(3) and dod(3)) or (c(2) and (licz1u2(3) xor dod(3)));
    
    wynik<=s;
    
----PRZEPELNIENIE ----------
nadmiar <= (licz1u2(3) and dod(3) and  not s(3)) or (not licz1u2(3) and not dod(3) and s(3));
    
end Behavioral;
