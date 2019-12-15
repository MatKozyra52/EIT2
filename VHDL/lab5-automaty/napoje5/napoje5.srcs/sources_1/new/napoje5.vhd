
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;


-----------------------------------------------------------------------------------
entity napoje5 is
    Port ( mony : in STD_LOGIC_VECTOR (6 downto 1) := "000000";    --wektor wejœcia piniondzów 5/2/1/0.5/0.2/0.1
           klik, clk, moneta : in STD_LOGIC;                       --klik to wybranie napoju / clk zegar / moneta czujnik który wykrywa obecnoœæ monety w komorze
           picie : out STD_LOGIC:='0';                             --picie wyplucie puszki
           reszta : out STD_LOGIC_VECTOR (6 downto 1) := "000000");--wektor identyczny jak  mony tylko wartosci zwracanych
end napoje5;
-------------------------------------------------------------------------------------
architecture Behavioral of napoje5 is

type stan is (czeka, odbierz, rezta, mon);   --stany czeka-czeka na wybor produktu / odbierz - wypluwa puche / rezta zwrot reszty / mon etap wrzucania mamony
signal maszyna : stan:=czeka;

function money (wektor : std_logic_vector(6 downto 1)) return real is    --funkcja przekszta³caj¹ca wektor na wartosc
    variable kwota : real := 0.0;                                        --nie musi jej tu byc bo uzyta jest raz ale chcialem sie nauczyc je tworzyc ;P
    begin
        if (wektor(6)= '1') then kwota:= kwota+ 5.0; end if;
        if (wektor(5)= '1') then kwota:= kwota+ 2.0; end if;
        if (wektor(4)= '1') then kwota:= kwota+ 1.0; end if;
        if (wektor(3)= '1') then kwota:= kwota+ 0.5; end if;
        if (wektor(2)= '1') then kwota:= kwota+ 0.2; end if;
        if (wektor(1)= '1') then kwota:= kwota+ 0.1; end if;
    
        return kwota;
end function;
begin
    
przebieg: process (clk, maszyna, klik)
variable kwota, zwrot: real := 0.0;
variable blok : std_logic := '0';   --zmienna blokuj¹ca zeby jedna monetka nie byla liczona 2 razy
begin
    if (clk'event and clk='1') then
        case maszyna is
            when czeka=> if klik = '1' then kwota := 3.70; maszyna<= mon; end if;
            when mon=>
                if moneta = '1' and blok = '0' then   --zapobiega naliczeniu monety 2 razy
                    kwota := kwota - money(mony);
                    if (kwota<=0.0) then
                        zwrot := 0.0 - kwota;
                        maszyna<=odbierz;             --zapobiega naliczeniu monety 2 razy
                    end if;
                end if;
                blok := moneta;
            when odbierz=> picie <='1'; maszyna<=rezta;
            when rezta=>
                picie<='0';
                if (zwrot>=4.99) then reszta<="100000"; zwrot:= zwrot - 5.0;   --niestety typ real ma problemy z dokladnoscia
                elsif (zwrot>=1.99) then reszta<="010000"; zwrot:= zwrot - 2.0;
                elsif (zwrot>=0.99) then reszta<="001000"; zwrot:= zwrot - 1.0;
                elsif (zwrot>=0.49) then reszta<="000100"; zwrot:= zwrot - 0.5;
                elsif (zwrot>=0.19) then reszta<="000010"; zwrot:= zwrot - 0.2;
                elsif (zwrot>=0.09) then reszta<="000001"; zwrot:= zwrot - 0.1;
                elsif (zwrot<0.01) then maszyna<=czeka; reszta<="000000"; end if;                
        end case;
    end if;
end process;

end Behavioral;
