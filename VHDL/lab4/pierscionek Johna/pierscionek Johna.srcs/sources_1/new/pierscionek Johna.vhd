

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pierscionek_Johna is
    Port ( clk : in STD_LOGIC;
           wyj_p, wyj_j : out STD_LOGIC_VECTOR (3 downto 0) :="0000");
end pierscionek_Johna;

architecture Behavioral of pierscionek_Johna is
signal dwyj_p, dwyj_j : std_logic_vector (3 downto 0) := "0001";
begin

pierscien: process (clk)
variable poz1, poz0 : integer := 0;
begin
    if (clk'event and clk = '1') then  
        poz1 := poz1 + 1;
        if (poz1 > 3) then poz1 := 0; end if;
        dwyj_p(poz1) <= '1';
        dwyj_p(poz0) <= '0';
        poz0 := poz1;
    end if;
end process;
wyj_p<=dwyj_p;

john: process (clk)
variable poz : integer := 0;
begin
   if (clk'event and clk = '1') then   
        if (dwyj_j(dwyj_j'left) = '0') then dwyj_j(poz) <= '1'; end if;
        if (dwyj_j(dwyj_j'left) = '1') then dwyj_j(poz) <= '0'; end if;
        poz := poz + 1;
        if (poz > 3) then poz := 0; end if;
   end if;
end process;
wyj_j<=dwyj_j;
end Behavioral;
