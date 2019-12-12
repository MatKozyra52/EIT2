----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2019 16:00:41
-- Design Name: 
-- Module Name: licznik - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity licznik is
    Port ( clk, R : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0) := "0000");
end licznik;

architecture Behavioral of licznik is
    
begin

    
    zliczanie: process ( clk )
        variable dQ : std_logic_vector(3 downto 0) := "0000" ;
    begin
        if (clk'event and clk='1') then
            dQ := dQ + 1;
        end if;
    end process;

Q <= "0000" when R = '1' else dQ;
end Behavioral;
