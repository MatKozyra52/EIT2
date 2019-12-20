

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity szyfr4_tb is
--  Port ( );
end szyfr4_tb;

architecture Behavioral of szyfr4_tb is
signal liczba1, liczba2, liczba3, liczba4 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal klik, res, clk, otworz : STD_LOGIC := '0';
begin
UTT: entity work.szyfr4 port map ( clk => clk,
                                   liczba1=> liczba1,
                                   liczba2=> liczba2,
                                   liczba3=> liczba3,
                                   liczba4=> liczba4,
                                   res=>res,
                                   otworz=>otworz,
                                   klik=>klik
                                   );

klok: process begin
    clk<='0';
    wait for 5ns;
    clk<='1';
    wait for 5ns;
end process;

wpis: process begin
    wait for 15ns;
    liczba1<="010";
    wait for 15ns;
    liczba2<="110";
    wait for 15ns;
    liczba3<="011";
    wait for 15ns;
    liczba4<="000";
    wait for 30ns;
    klik<='1';
    
    wait for 150ns;
    liczba1<="001";
    wait for 15ns;
    liczba2<="010";
    wait for 15ns;
    liczba3<="011";
    wait for 15ns;
    liczba4<="100";
    wait for 30ns;
    klik<='1';
    
    wait for 150ns;
    liczba1<="000";
    wait for 15ns;
    liczba2<="000";
    wait for 15ns;
    liczba3<="000";
    wait for 15ns;
    liczba4<="000";
    wait for 30ns;
    klik<='0';
    wait;
end process;
end Behavioral;
