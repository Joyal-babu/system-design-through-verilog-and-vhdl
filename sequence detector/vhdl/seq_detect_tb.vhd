library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fsm_pract_tb is
--  Port ( );
end fsm_pract_tb;

architecture Behavioral of fsm_pract_tb is

component fsm_pract is
    Port ( 
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           x   : in  STD_LOGIC;
           y   : out STD_LOGIC );
end component;

signal clk,rst,x,y : std_logic := '0'; 

begin
-- instantiating the design under test
DUT : fsm_pract port map(
            clk => clk,
            rst => rst,
            x   => x,
            y   => y     );
            
process_clock : process
begin
    clk <= '0'; wait for 10 ns;
    clk <= '1'; wait for 10 ns;
end process;

process_stimulus : process
begin
    rst <= '1'; wait for 100 ns;
    rst <= '0'; 
    x   <= '0'; wait for 117 ns;
    x   <= '1'; wait for 100 ns;
    x   <= '0'; wait for 50 ns;
    x   <= '1'; wait for 65 ns;
    wait;
end process;

end Behavioral;
