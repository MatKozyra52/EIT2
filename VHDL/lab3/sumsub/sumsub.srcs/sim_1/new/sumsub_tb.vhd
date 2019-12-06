----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2019 00:11:05
-- Design Name: 
-- Module Name: sumsub_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumsub_tb is
--  Port ( );
end sumsub_tb;

architecture Behavioral of sumsub_tb is
signal licz1 : STD_LOGIC_VECTOR (4 downto 0);
signal syg : STD_LOGIC := '0';
signal wynik : STD_LOGIC_VECTOR (4 downto 0);
signal nadmiar : STD_LOGIC;
begin
UTT: entity work.sumsub port map (licz1=>licz1, syg=>syg, wynik=>wynik, nadmiar=>nadmiar);

liczba1 : process
    begin
        licz1<= "00111";
        wait for 10 ns;
        licz1<= "11001";
        wait for 10 ns;
        licz1<= "11111";
        wait for 10 ns;
        licz1<= "00001";
        wait for 10 ns;
     end process;
     
 sygnal : process
    begin
        syg<= '1';
        wait for 15 ns;
        syg <= '0';
        wait for 15 ns;
     end process;
end Behavioral;
