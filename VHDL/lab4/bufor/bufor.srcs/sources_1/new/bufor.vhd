
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity bufor is
    Port ( wej : in STD_LOGIC_VECTOR (3 downto 0);
           ce, clk : in STD_LOGIC;
           wyj : out STD_LOGIC_VECTOR (3 downto 0) := "0000");
end bufor;

architecture Behavioral of bufor is
signal  s1, s2, s3, s4, s5 : std_logic_vector(3 downto 0) := "0000";

begin

process (clk, ce)
variable licznik : integer := 0;
begin
    if (clk'event and clk = '1' and ce = '1') then
        licznik := licznik + 1;
        if (licznik > 5) then licznik := 1; end if; ---reset licznika
-------------------odczyt-----------------------    
        case licznik is
            when 1 => wyj <=s1;
            when 2 => wyj <=s2;
            when 3 => wyj <=s3;
            when 4 => wyj <=s4;
            when 5 => wyj <=s5;
            when others => wyj <= "XXXX";
       end case;
-------------------zapis-------------------------
        case licznik is
            when 1 => s1 <=wej;
            when 2 => s2 <=wej;
            when 3 => s3 <=wej;
            when 4 => s4 <=wej;
            when 5 => s5 <=wej;
            when others => wyj <= "XXXX";
       end case;
    end if;
end process;
       
end Behavioral;
