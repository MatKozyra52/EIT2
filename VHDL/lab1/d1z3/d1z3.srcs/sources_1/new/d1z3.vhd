library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity d1z3 is
    Port ( x : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end d1z3;

architecture Behavioral of d1z3 is  -- to tutaj umieœcimy kod stanowi¹cy funkcjonalnoœæ naszego uk³adu.
  -- miejsce deklaracji sygna³ów wewnêtrznych \
  signal yp: std_logic_vector(2 downto 0); -- sygna³ wewnêtrzny - tylko w tym miejscu mo¿na deklarowaæ sygna³y 

begin
    -- nasza logika: y<= ……………………… 
    yp(0)<=x(0)and not x(1) and not x(2);
    yp(1)<=not x(0)and x(1) and not x(2);
    yp(2)<= not x(0)and not x(1) and x(2);
    y <= yp(0) or yp(1) or yp(2);
end Behavioral; 
