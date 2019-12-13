--------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity dzielnikclk is
    Port ( clk : in STD_LOGIC;
           wyj : out STD_LOGIC);
end dzielnikclk;

architecture Behavioral of dzielnikclk is
signal dclk : std_logic := '0';
begin
process (clk)
variable ile : integer := 4;   ------na ile ma dzieliæ
variable na0 : integer :=1;     -----wsp wypelnienia = na0/ile
variable na1 : integer := ile - na0;
variable licz : integer := 0;
begin

    if (clk'event and clk = '1') then
        if (dclk = '1' and clk'event and clk = '1') then
            licz := licz + 1;
            if (licz = na0) then
                licz := 0;
                dclk <= '0';
                end if;
        end if;
        
        if (dclk = '0' and clk'event and clk = '1') then
            licz := licz + 1;
            if (licz = na1) then
                licz := 0;
                dclk <= '1';
                end if;
        end if;
            
    end if;
    
end process;
wyj <= dclk;
end Behavioral;
