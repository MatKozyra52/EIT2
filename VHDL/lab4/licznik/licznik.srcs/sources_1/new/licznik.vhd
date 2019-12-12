----------------------------------------------------------------------------------
--licznik 4bit z res synchronicznym i CE modulo cokolwiek(max 4bit)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity licznik is
    Port ( clk, R , CE: in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0) := "0000");
end licznik;

architecture Behavioral of licznik is
    
begin
zliczanie: process ( clk, R)
        variable dQ : std_logic_vector(3 downto 0) := "0000" ;
    
    begin
 -----------------zliczanie-------------------------------   
    if (clk'event and clk='1' and CE = '1') then
        dQ := dQ + 1;
    end if;
 ----------------------reset--------------------------------   
    if ((R = '1' and clk'event and clk='1' and CE = '1') or dQ >8) then
        dQ := "0000";
    end if;
 -----------------------przypisanie-------------------------   
    Q <=dQ;
    end process;

end Behavioral;
