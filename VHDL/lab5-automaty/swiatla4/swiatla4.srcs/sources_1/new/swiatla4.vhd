
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity swiatla4 is
    Port ( clk : in STD_LOGIC;
           czerw : out STD_LOGIC;
           ziel : out STD_LOGIC;
           pom : out STD_LOGIC);
end swiatla4;

architecture Behavioral of swiatla4 is
type stany is (r, yr, z, y);
signal swiatla : stany;
begin

wyjscie: process (swiatla)
    begin
        if swiatla= yr then czerw<='1'; ziel<='0'; pom<='1';
        elsif swiatla= z then czerw<='0'; ziel<='1'; pom<='0';
        elsif swiatla= y then czerw<='0'; ziel<='0'; pom<='1';
        else czerw<='1'; ziel<='0'; pom<='0';
        end if;
end process;

przebieg: process (clk, swiatla)
variable czas: integer :=0; 
begin
    if (clk'event and clk = '1') then
        czas := czas + 1;
            case swiatla is
                when r=> if czas = 10 then swiatla<= yr; czas:=0; end if;
                when yr=> if czas = 3 then swiatla<= z; czas:=0; end if;
                when z=> if czas = 10 then swiatla<= y; czas:=0; end if;
                when y=> if czas = 5 then swiatla<= r; czas:=0; end if;
            end case;
    end if;
    
end process;

end Behavioral;
