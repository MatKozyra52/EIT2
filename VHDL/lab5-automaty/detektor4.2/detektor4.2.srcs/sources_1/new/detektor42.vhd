
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity detektor42 is
    Port ( clk : in STD_LOGIC;
           wej : in STD_LOGIC;
           wyj : out STD_LOGIC_VECTOR (1 downto 0));
end detektor42;

architecture Behavioral of detektor42 is

type stany is (s0, s01, s02, s03, s11, s12, s13);
signal detektor: stany :=s0;

begin

wyjscia: process (detektor)
begin
    case detektor is
        when s0=> wyj<="00";
        when s01=> wyj<="00";
        when s02=> wyj<="00";
        when s03=> wyj<="01";
        when s11=> wyj<="00";
        when s12=> wyj<="00";
        when s13=> wyj<="10";
    end case;
end process;

przebieg : process (clk, detektor)
begin
    if (clk'event and clk='1') then
        case detektor is
            when s0 => if (wej='0') then detektor <= s01; elsif (wej='1') then detektor <=s11; else detektor<=s0; end if;
            when s01 => if (wej='0') then detektor <= s02; elsif (wej='1') then detektor <=s11; else detektor<=s0; end if;
            when s02 => if (wej='0') then detektor <= s03; elsif (wej='1') then detektor <=s11; else detektor<=s0; end if;
            when s03 => if (wej='0') then detektor <= s03; elsif (wej='1') then detektor <=s11; else detektor<=s0; end if;
            
            when s11 => if (wej='0') then detektor <= s01; elsif (wej='1') then detektor <=s12; else detektor<=s0; end if;
            when s12 => if (wej='0') then detektor <= s01; elsif (wej='1') then detektor <=s13; else detektor<=s0; end if;
            when s13 => if (wej='0') then detektor <= s01; elsif (wej='1') then detektor <=s13; else detektor<=s0; end if;
        end case;
    end if;
end process;
end Behavioral;
