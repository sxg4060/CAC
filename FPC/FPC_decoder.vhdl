-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-22-20
-- Description: This is a file for an encoder that
-- implements FOC decoding scheme to reduce effects
-- of crosstalk.
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FPC_decoder is
  port(
    input : in std_logic_vector(4 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    output : out std_logic_vector(3 downto 0)
    );
end FPC_decoder;

architecture behavioral of FPC_decoder is

begin 
  dec : process(clk,rst)
  begin
    if rst = '1' then
      output <= (others => '0');
    elsif clk'event and clk = '1' then
      if (input = "00000") then
        output <= "0000";
      elsif (input = "00001") then
        output <= "0001";
      elsif (input = "00110") then
        output <= "0010";
      elsif (input = "00011") then
        output <= "0011";
      elsif (input = "01100") then
        output <= "0100";
      elsif (input = "00111") then
        output <= "0101";
      elsif (input = "01110") then
        output <= "0110";
      elsif (input = "01111") then
        output <= "0111";
      elsif (input = "10000") then
        output <= "1000";
      elsif (input = "10001") then
        output <= "1001";
      elsif (input = "11000") then
        output <= "1010";
      elsif (input = "10011") then
        output <= "1011";
      elsif (input = "11100") then
        output <= "1100";
      elsif (input = "11001") then
        output <= "1101";
      elsif (input = "11110") then
        output <= "1110";
      elsif (input = "11111") then
        output <= "1111";
      else
        output <= "0000";
        
      end if;
    end if;
  end process;
end behavioral;




