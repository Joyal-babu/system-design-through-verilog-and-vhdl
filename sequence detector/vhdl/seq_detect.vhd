library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_pract is
    Port ( 
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           x   : in  STD_LOGIC;
           y   : out STD_LOGIC );
end fsm_pract;

architecture Behavioral of fsm_pract is

type state_type is (s0,s1,s2,s3);
signal state : state_type;

begin

y <= '1' when state = s3 else '0';

process(clk, rst)
begin
    if (rst = '1') then
        state <= s0;
    elsif (rising_edge(clk)) then 
        case state is
            when s0 => if (x = '1') then
                            state <= s1;
                       else
                            state <= s0;
                       end if;
            when s1 => if (x = '1') then
                            state <= s2;
                       else
                            state <= s0;
                       end if;
            when s2 => if (x = '1') then
                            state <= s3;
                       else
                            state <= s0;
                       end if;
            when s3 => if (x = '1') then
                            state <= s1;
                       else
                            state <= s0;
                       end if;
            when others => state <= s0;
       end case;
    end if;
end process;

end Behavioral;
