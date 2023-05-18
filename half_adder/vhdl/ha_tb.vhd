library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ha_tb is
--  Port ( );
end ha_tb;

architecture Behavioral of ha_tb is

component ha is
    Port ( 
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC );
end component;

signal  A :  STD_LOGIC := '0';
signal  B :  STD_LOGIC := '0';
signal  C :  STD_LOGIC := '0';
signal  S :  STD_LOGIC := '0';

begin
--instantiating design under test

DUT : ha port map(
            A => A,
            B => B,
            S => S,
            C => C );
            
stimulus_process : process
                   Begin
                    A <= '0';  B <= '0'; wait for 500 ns;
                    A <= '0';  B <= '1'; wait for 500 ns;
                    A <= '1';  B <= '0'; wait for 500 ns;
                    A <= '1';  B <= '1'; wait for 500 ns;
                    wait;
                    end process;

end Behavioral;
