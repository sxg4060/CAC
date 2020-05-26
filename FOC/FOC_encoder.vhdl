-----------------------------------------------------------
-- Author: Sahil Gogna
-- Date: 4-5-20
-- Description: This is a file for an encoder that
-- implements FOC/FTC/FPC encoding scheme to reduce effects
-- of crosstalk.
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FOC_encoder is
  port(
    input : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    rst : in std_logic;
    output : out std_logic_vector(4 downto 0)
    );
end FOC_encoder;

architecture behavioral of FOC_encoder is

begin 
  enc : process(clk,rst)
  begin
    if rst = '1' then
      output <= (others => '0');
    elsif clk'event and clk = '1' then
      if (input = "0000") then
        output <= "00000";
      elsif (input = "0001") then
        output <= "00100";
      elsif (input = "0010") then
        output <= "00001";
      elsif (input = "0011") then
        output <= "00101";
      elsif (input = "0100") then
        output <= "00011";
      elsif (input = "0101") then
        output <= "00111";
      elsif (input = "0110") then
        output <= "10011";
      elsif (input = "0111") then
        output <= "10111";
      elsif (input = "1000") then
        output <= "10000";
      elsif (input = "1001") then
        output <= "10100";
      elsif (input = "1010") then
        output <= "10001";
      elsif (input = "1011") then
        output <= "10101";
      elsif (input = "1100") then
        output <= "11000";
      elsif (input = "1101") then
        output <= "11100";
      elsif (input = "1110") then
        output <= "11001";
      elsif (input = "1111") then
        output <= "11101";
      else
        output <= "11111";
        
      end if;
    end if;
  end process;
end behavioral;

