library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_2x1_case is
    Port (
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out STD_LOGIC );
end mux_2x1_case;

architecture Behavioral of mux_2x1_case is

begin

process(a,b,s)
begin
    case s is
        when '0'    => y <= a;
        when '1'    => y <= b;
        when others => y <= 'Z';
    end case;
end process;

end Behavioral;
