-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for full FTC Encoder
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FTC_E is
  port(
    ip : in std_logic_vector(31 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    op : out std_logic_vector(47 downto 0)
    );
end FTC_E;

architecture behavioral of FTC_E is

begin
  GEN_ENC: for I in 0 to 7 generate
      ENCODER : entity work.FTC_encoder
      port map (
                input => ip(31-(I*4) downto 28-(I*4)), 
                clk => clk, 
                rst => rst, 
                output => op(47-(I*6) downto 42-(I*6))
                );
    end generate GEN_ENC;
end behavioral;




