library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- umo¿liwia dokonanie operacji dodawania na std_logic_vector 

entity d1z3_tb is
--  Port ( );
end d1z3_tb;

architecture sim of d1z3_tb is
-- deklaracja sygna³ów - musz¹ one odpowiadaæ sygna³om modu³u testowanego   
signal x: std_logic_vector(2 downto 0):= "000";  -- sygna³ wejœciowy z wartoœci¹ pocz¹tkowa "000"   
signal y_uut, y_correct: std_logic;  -- sygna³ wyjœciowy z modu³u UUT, sygna³ wyjœciowy poprawny 
signal error: std_logic;  -- sygna³ b³êdu, œwiadcz¹cy, ¿e logika UUT nie dzia³a poprawnie
  
begin
 UUT: entity work.d1z3 port map (x=> x, y=> y_uut);  -- Unit Under Test 
 -- poprawna wartoœæ - kod nie jest realizowany w sprzêcie wiêc mo¿e byæ napisany na wy¿szym poziomie   
 y_correct<= '1' when ('0' & x(0)) + x(1) + x(2) = 1 else '0';     
 error<= '1' when y_uut /= y_correct else '0'; -- sprawdzenie czy nie ma b³êdu, ‘/=’ – ró¿ny ‘!=’ 
process begin     
wait for 10ns;     
x<= x+1;   
end process; 
end sim;
