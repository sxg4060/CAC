-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for full FOC Decoder
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FOC_D is
  port(
    ip : in std_logic_vector(39 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    op : out std_logic_vector(31 downto 0)
    );
end FOC_D;

architecture behavioral of FOC_D is

begin
  GEN_DEC: for I in 0 to 7 generate
      DECODER : entity work.FOC_decoder
      port map (
                input => ip(39-(I*5) downto 35-(I*5)), 
                clk => clk, 
                rst => rst, 
                output => op(31-(I*4) downto 28-(I*4))
                );
    end generate GEN_DEC;
end behavioral;




