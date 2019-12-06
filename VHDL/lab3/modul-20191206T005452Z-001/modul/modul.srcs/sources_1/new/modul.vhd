----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2019 01:29:46
-- Design Name: 
-- Module Name: modul - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modul is
    Port ( wejscie : in STD_LOGIC_VECTOR (5 downto 0);
           wyjscie : out STD_LOGIC_VECTOR (5 downto 0));
end modul;

architecture Behavioral of modul is
signal carry,wej_rev,wyj_mod : STD_LOGIC_VECTOR (5 downto 0) :="000000";
begin
    wej_rev<= not wejscie;
    wyj_mod(0) <= wej_rev(0) xor '1';
    carry(1) <= wej_rev(0) and '1';
    wyj_mod(1) <= wej_rev(1) xor carry(1);
    carry(2) <= wej_rev(1) and carry(1);
    wyj_mod(2) <= wej_rev(2) xor carry(2);
    carry(3) <= wej_rev(2) and carry(2);
    wyj_mod(3) <= wej_rev(3) xor carry(3);
    carry(4) <= wej_rev(3) and carry(3);
    wyj_mod(4) <= wej_rev(4) xor carry(4);
    carry(5) <= wej_rev(4) and carry(4);
    wyj_mod(5) <= wej_rev(5) xor carry(5);
    wyjscie <= wyj_mod;

end Behavioral;
