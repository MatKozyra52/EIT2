

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bufor_tb is
--  Port ( );
end bufor_tb;

architecture Behavioral of bufor_tb is
signal wej, wyj : std_logic_vector (3 downto 0);
signal ce, clk : std_logic;

begin
uut: entity work.bufor PORT MAP (
 wej => wej,
 wyj => wyj,
 ce => CE,
 clk => clk );
 
 enable: process
 begin
 ce<='0';
 wait for 70ns;
 ce<='1';
 wait for 120ns;
 end process;
 
 clock: process
 begin 
 clk <= '1';
 wej <= "0011";
 wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0001";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0111";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0000";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0010";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0000";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "1111";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "1011";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "1010";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0001";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
  clk <= '1';
 wej <= "0111";
  wait for 10ns;
 clk <= '0';
 wait for 10ns;
 
end process;
end Behavioral;
