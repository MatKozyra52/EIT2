----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2019 01:33:13
-- Design Name: 
-- Module Name: modul_tb - Behavioral
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

entity modul_tb is
    Port ( wejscie : in STD_LOGIC_VECTOR (5 downto 0) := "100110";
           wyjscie : out STD_LOGIC_VECTOR (5 downto 0));
end modul_tb;

architecture Behavioral of modul_tb is

begin
UTT: entity work.modul port map(wejscie=>wejscie, wyjscie=>wyjscie); 

end Behavioral;
