

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity za44 is
    Port ( clk, din : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           DS : out STD_LOGIC;
           wyj : out STD_LOGIC_VECTOR (3 downto 0));
end za44;

architecture Behavioral of za44 is
signal daneS, dwyj : std_logic_vector(3 downto 0):= "0000";
signal dds : std_logic := '0';
begin

process (clk, din)

begin 
    
    if (din = '1' and clk'event and clk = '1') then daneS<=D; end if;
    

        
    if (din = '0' and clk'event and clk = '1') then
        
        dwyj<= dwyj(dwyj'left-1 downto 0) & daneS(3);
        daneS <= daneS(daneS'left-1 downto 0 ) & '0';
    end if;
    
    if (dwyj(0) = daneS(3) and clk'event and clk = '1')then
        dds <= not dds;
    end if;

end process;
ds <= dds;
wyj<=dwyj;
end Behavioral;
