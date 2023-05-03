library ieee;
use ieee.std_logic_1164.all;

entity clock is
  port ( clk: out std_logic);
end clock;

architecture behaviour of clock
is
  constant clk_period : time := 10 ns;
begin
  -- Clock process definition
  clk_process: process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
end behaviour;
