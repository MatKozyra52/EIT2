library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity napoje5_tb is
--  Port ( );
end napoje5_tb;

architecture Behavioral of napoje5_tb is
signal mony, reszta : std_logic_vector(6 downto 1):="000000";
signal klik, clk, picie, moneta: std_logic := '0';
begin
UTT: entity work.napoje5 port map( mony=>mony,
                                    reszta=>reszta,
                                    klik=>klik,
                                    clk=>clk,
                                    moneta=> moneta,
                                    picie=>picie);
zegar: process begin
    clk<='0';
    wait for 5ns;
    clk<='1';
    wait for 5ns;
end process;

przycisk: process begin
    wait for 15ns;
    klik <= '1';
    wait for 20ns;
    klik<='0';
    wait;
end process;
    
piniodze: process begin
    wait for 25ns;
    moneta<='1';
    mony<="000100";
    wait for 20 ns;
    moneta <='0';
    wait for 30ns;
    moneta<='1';
    mony<="010000";
    wait for 20 ns;
    moneta <='0';
    wait for 30ns;
    moneta<='1';
    mony<="010000";
    wait for 20 ns;
    moneta <='0';

    wait;
end process;
end Behavioral;
