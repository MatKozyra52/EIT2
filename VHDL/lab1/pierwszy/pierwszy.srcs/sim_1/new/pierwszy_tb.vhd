
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pierwszy_tb is
--  Port ( );
end pierwszy_tb;

architecture Behavioral of pierwszy_tb is

 signal D : std_logic := '0';
 signal CLK : std_logic := '0';
 --Outputs
 signal Q : std_logic;
 -- Clock period definitions
 constant period : time := 10 ns; 
 
begin
uut: entity work.pierwszy PORT MAP (
 D => D,
 CLK => CLK,
 Q => Q );

 CLK_process : process
 begin
 CLK <= '0';
 wait for period/2;
 CLK <= '1';
 wait for period/2;
 end process;
 -- Stimulus process
 stim_proc: process
 begin
 D <= '0';
 wait for 8 ns;
 D <= '1';
 wait for 3* period;
D<= '0';
wait;
 end process;

end Behavioral;
