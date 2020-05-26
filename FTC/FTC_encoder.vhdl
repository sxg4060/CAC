-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-5-20
-- Description: This is a file for an encoder that
-- implements FTC encoding scheme to reduce effects
-- of crosstalk.
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FTC_encoder is
  port(
    input : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    output : out std_logic_vector(5 downto 0)
    );
end FTC_encoder;

architecture behavioral of FTC_encoder is

begin 
  enc : process(clk,rst)
  begin
    if rst = '1' then
      output <= (others => '0');
    elsif clk'event and clk = '1' then
      if (input = "0000") then
        output <= "000000";
      elsif (input = "0001") then
        output <= "000011";
      elsif (input = "0010") then
        output <= "001000";
      elsif (input = "0011") then
        output <= "001011";
      elsif (input = "0100") then
        output <= "001111";
      elsif (input = "0101") then
        output <= "100000";
      elsif (input = "0110") then
        output <= "100011";
      elsif (input = "0111") then
        output <= "101000";
      elsif (input = "1000") then
        output <= "101011";
      elsif (input = "1001") then
        output <= "101111";
      elsif (input = "1010") then
        output <= "111000";
      elsif (input = "1011") then
        output <= "111011";
      elsif (input = "1100") then
        output <= "000010";
      elsif (input = "1101") then
        output <= "111010";
      elsif (input = "1110") then
        output <= "111110";
      elsif (input = "1111") then
        output <= "111111";
      else
        output <= "010101"; --ERROR DeteCtion
        
      end if;
    end if;
  end process;
end behavioral;


