library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2x1_case_tb is
--  Port ( );
end mux_2x1_case_tb;

architecture Behavioral of mux_2x1_case_tb is

component mux_2x1_case is
    Port (
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out STD_LOGIC );
end component;

signal a,b,s,y : STD_LOGIC :='0';

begin
--instantiating design under test
DUT : mux_2x1_case port map(
                            a => a,
                            b => b,
                            s => s,
                            y => y  );
                            
stimulus_process : process
                   begin
                        a <= '0'; b <= '0'; s <= '0'; wait for 200 ns;
                        a <= '0'; b <= '0'; s <= '1'; wait for 200 ns;
                        a <= '0'; b <= '1'; s <= '0'; wait for 200 ns;
                        a <= '0'; b <= '1'; s <= '1'; wait for 200 ns;
                        a <= '1'; b <= '0'; s <= '0'; wait for 200 ns;
                        a <= '1'; b <= '0'; s <= '1'; wait for 200 ns;
                        a <= '1'; b <= '1'; s <= '0'; wait for 200 ns;
                        a <= '1'; b <= '1'; s <= '1'; wait for 200 ns;
                        wait;
                   end process;

end Behavioral;
