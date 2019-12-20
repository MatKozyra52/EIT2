library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


entity szyfr4 is
    Port ( liczba1 : in STD_LOGIC_VECTOR (2 downto 0);
           liczba2 : in STD_LOGIC_VECTOR (2 downto 0);
           liczba3 : in STD_LOGIC_VECTOR (2 downto 0);
           liczba4 : in STD_LOGIC_VECTOR (2 downto 0);
           klik, res, clk : in STD_LOGIC;
           otworz : out STD_LOGIC := '0');
end szyfr4;

architecture Behavioral of szyfr4 is
type stany is (wybierz, spr, ok, nok);
signal drzwi: stany := wybierz;

begin

przebieg: process (clk, drzwi)
constant kod1 : integer := 1;
constant kod2 : integer := 2;
constant kod3 : integer := 3;
constant kod4 : integer := 4;
variable wpis1, wpis2, wpis3, wpis4, czas : integer := 0;
begin
if (clk'event and clk='1') then
    case drzwi is
        when wybierz =>
            if (res='1') then wpis1:=0; wpis2:=0; wpis3:=0; wpis4:=0; end if;
            if (klik='1') then drzwi <= spr; end if;
            wpis1:= to_integer(unsigned(liczba1));
            wpis2:= to_integer(unsigned(liczba2));
            wpis3:= to_integer(unsigned(liczba3));
            wpis4:= to_integer(unsigned(liczba4));
        when spr =>
            if (wpis1=kod1 and wpis2=kod2 and wpis3=kod3 and wpis4=kod4) then drzwi<=ok;
            else drzwi<=nok; end if;
        when nok => czas := czas+1; otworz<='X'; if (czas > 10) then czas :=0; otworz<='0'; drzwi <=wybierz; end if;  --PERMISION DENIED  
        when ok => czas := czas+1; otworz<='1'; if (czas > 10) then czas :=0; otworz<='0'; drzwi <=wybierz; end if;
    end case;
end if;
end process;

end Behavioral;
