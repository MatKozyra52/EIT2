library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- umo�liwia dokonanie operacji dodawania na std_logic_vector 

entity d1z3_tb is
--  Port ( );
end d1z3_tb;

architecture sim of d1z3_tb is
-- deklaracja sygna��w - musz� one odpowiada� sygna�om modu�u testowanego   
signal x: std_logic_vector(2 downto 0):= "000";  -- sygna� wej�ciowy z warto�ci� pocz�tkowa "000"   
signal y_uut, y_correct: std_logic;  -- sygna� wyj�ciowy z modu�u UUT, sygna� wyj�ciowy poprawny 
signal error: std_logic;  -- sygna� b��du, �wiadcz�cy, �e logika UUT nie dzia�a poprawnie
  
begin
 UUT: entity work.d1z3 port map (x=> x, y=> y_uut);  -- Unit Under Test 
 -- poprawna warto�� - kod nie jest realizowany w sprz�cie wi�c mo�e by� napisany na wy�szym poziomie   
 y_correct<= '1' when ('0' & x(0)) + x(1) + x(2) = 1 else '0';     
 error<= '1' when y_uut /= y_correct else '0'; -- sprawdzenie czy nie ma b��du, �/=� � r�ny �!=� 
process begin     
wait for 10ns;     
x<= x+1;   
end process; 
end sim;
