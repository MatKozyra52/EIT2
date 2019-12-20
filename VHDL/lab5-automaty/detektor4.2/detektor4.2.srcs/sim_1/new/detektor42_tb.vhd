library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detektor42_tb is
--  Port ( );
end detektor42_tb;

architecture Behavioral of detektor42_tb is
signal wej, clk : std_logic :='0';
signal wyj: std_logic_vector(1 downto 0);
constant period: time := 5ns;
begin
utt: entity work.detektor42 port map(wej=>wej,
                                     wyj=>wyj,
                                     clk=>clk);

zegar: process begin
    clk<='0';
    wait for period;
    clk<='1';
    wait for period;
end process;

sygnal: process begin
    wej<='0';
    wait for 2*period;
    wej<='1';
    wait for 2*period;
    wej<='0';
    wait for 2*period;
    wej<='1';
    wait for 2*period;
    wej<='1';
    wait for 2*period;
    wej<='1';
    wait for 2*period;
    wej<='0';
    wait for 2*period;
    wej<='1';
    wait for 2*period;
    wej<='0';
    wait for 2*period;
    wej<='0';
    wait for 2*period;
end process;

end Behavioral;
