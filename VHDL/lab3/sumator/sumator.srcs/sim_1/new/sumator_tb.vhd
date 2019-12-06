library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumator_tb is
--  Port ( );
end sumator_tb;

architecture Behavioral of sumator_tb is
signal wej1 : std_logic_vector(5 downto 0) := "000010";
signal wej2 : std_logic_vector(5 downto 0) := "001110";
signal wyj : std_logic_vector(5 downto 0);
signal przep : std_logic;

begin
UTT: entity work.sumator port map (wej1=>wej1, wej2=>wej2, przep=>przep, wyj=>wyj);

liczba1 : process
    begin
        wej1<= "000011";
        wait for 10 ns;
        wej1<= "111001";
        wait for 10 ns;
        wej1<= "011111";
        wait for 10 ns;
        wej1<= "011001";
        wait for 10 ns;
     end process;

liczba2 : process
    begin
        wej2<= "000101";
        wait for 10 ns;
        wej2<= "100111";
        wait for 5 ns;
        wej2<= "000100";
        wait for 10 ns;
        wej2<= "000011";
        wait for 10 ns;
     end process;
        
end Behavioral;
