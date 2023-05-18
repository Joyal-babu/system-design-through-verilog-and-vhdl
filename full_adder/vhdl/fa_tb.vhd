library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_tb is
--  Port ( );
end fa_tb;

architecture Behavioral of fa_tb is

component fa is
    Port (
           A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           Sum  : out STD_LOGIC;
           Cout : out STD_LOGIC );
end component;

signal  A    :  STD_LOGIC := '0';
signal  B    :  STD_LOGIC := '0';
signal  Cin  :  STD_LOGIC := '0';
signal  Sum  :  STD_LOGIC := '0';
signal  Cout :  STD_LOGIC := '0';

begin
-- instantiate design under test
DUT : fa port map(
            A    => A,
            B    => B,
            Cin  => Cin,
            Sum  => Sum,
            Cout => Cout );
            
stimulus_process : process
                   Begin
                    A <= '0';  B <= '0'; Cin <= '0'; wait for 200 ns;
                    A <= '0';  B <= '0'; Cin <= '1'; wait for 200 ns;
                    A <= '0';  B <= '1'; Cin <= '0'; wait for 200 ns;
                    A <= '0';  B <= '1'; Cin <= '1'; wait for 200 ns;
                    A <= '1';  B <= '0'; Cin <= '0'; wait for 200 ns;
                    A <= '1';  B <= '0'; Cin <= '1'; wait for 200 ns;
                    A <= '1';  B <= '1'; Cin <= '0'; wait for 200 ns;
                    A <= '1';  B <= '1'; Cin <= '1'; wait for 200 ns;
                    wait;
                    end process;
            
end Behavioral;
