library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity hottobin is
    Port ( hot : in STD_LOGIC_VECTOR (7 downto 0);
           bin : out STD_LOGIC_VECTOR (2 downto 0));
end hottobin;

architecture Behavioral of hottobin is
    signal dbin : std_logic_VECTOR (2 downto 0);
begin
    dbin(0)<=hot(1) or hot(3) or hot(5) or hot(7);
    dbin(1)<=hot(2) or hot(3) or hot(6) or hot(7);
    dbin(2)<=hot(4) or hot(5) or hot(6) or hot(7);
    bin<=dbin;

end Behavioral;
