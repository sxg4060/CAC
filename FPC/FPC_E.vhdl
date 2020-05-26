-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for full FPC Encoder
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FPC_E is
  port(
    ip : in std_logic_vector(31 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    op : out std_logic_vector(39 downto 0)
    );
end FPC_E;

architecture behavioral of FPC_E is

begin
  GEN_ENC: for I in 0 to 7 generate
      ENCODER : entity work.FPC_encoder
      port map (
                input => ip(31-(I*4) downto 28-(I*4)), 
                clk => clk, 
                rst => rst, 
                output => op(39-(I*5) downto 35-(I*5))
                );
    end generate GEN_ENC;
end behavioral;




