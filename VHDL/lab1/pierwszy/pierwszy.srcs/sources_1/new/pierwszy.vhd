library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pierwszy is
    Port ( CLK : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC:='0');
end pierwszy;

architecture Behavioral of pierwszy is
    signal p0, p1, p2, p3, p4, p5, p6 : std_logic;

begin
    p0 <= d nand p3;
    p1 <= p0 nand p2;
    p2 <= p1 nand clk;
    p3 <=  not ( p2 and clk and p0);
    p4 <= p2 nand p5;
    p5 <= p4 nand p3;
    Q <= p4;
    
end Behavioral;