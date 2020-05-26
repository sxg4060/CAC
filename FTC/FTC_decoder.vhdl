
-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for an encoder that
-- implements FOC decoding scheme to reduce effects
-- of crosstalk.
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FTC_decoder is
  port(
    input : in std_logic_vector(5 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    output : out std_logic_vector(3 downto 0)
    );
end FTC_decoder;

architecture behavioral of FTC_decoder is

begin 
  dec : process(clk,rst)
  begin
    if rst = '1' then
      output <= (others => '0');
    elsif clk'event and clk = '1' then
      if (input = "000000") then
        output <= "0000";
      elsif (input = "000011") then
        output <= "0001";
      elsif (input = "001000") then
        output <= "0010";
      elsif (input = "001011") then
        output <= "0011";
      elsif (input = "001111") then
        output <= "0100";
      elsif (input = "100000") then
        output <= "0101";
      elsif (input = "100011") then
        output <= "0110";
      elsif (input = "101000") then
        output <= "0111";
      elsif (input = "101011") then
        output <= "1000";
      elsif (input = "101111") then
        output <= "1001";
      elsif (input = "111000") then
        output <= "1010";
      elsif (input = "111011") then
        output <= "1011";
      elsif (input = "000010") then
        output <= "1100";
      elsif (input = "111010") then
        output <= "1101";
      elsif (input = "111110") then
        output <= "1110";
      elsif (input = "111111") then
        output <= "1111";
        
      end if;
    end if;
  end process;
end behavioral;

