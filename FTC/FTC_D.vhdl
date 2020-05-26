-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for full FTC Decoder
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FTC_D is
  port(
    ip : in std_logic_vector(47 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    op : out std_logic_vector(31 downto 0)
    );
end FTC_D;

architecture behavioral of FTC_D is

begin
  GEN_DEC: for I in 0 to 7 generate
      DECODER : entity work.FTC_decoder
      port map (
                input => ip(47-(I*6) downto 42-(I*6)), 
                clk => clk, 
                rst => rst, 
                output => op(31-(I*4) downto 28-(I*4))
                );
    end generate GEN_DEC;
end behavioral;






