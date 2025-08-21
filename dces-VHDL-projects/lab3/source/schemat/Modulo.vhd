----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:40 11/19/2024 
-- Design Name: 
-- Module Name:    Modulo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Modulo is
	PORT(
		X: IN std_logic_vector(3 downto 0);
		Y1: OUT std_logic_vector(3 downto 0);
		Y2: OUT std_logic_vector(3 downto 0)
		);
end Modulo;

architecture Behavioral of Modulo is
	COMPONENT modulus
		
	END COMPONENT;
	
begin
	Y1(0) <= X(0);
	Y1(1) <= X(1) xnor X(0);
	Y1(2) <= ( X(1) and (X(2) xor X(0))) or ( X(2) and not X(1));
	Y1(3) <= (X(3) and (X(2) or (X(1) and X(0)))) or (not X(3) and not X(2) and (not X(1) or (X(1) and not X(0))));

	with X select Y2 <=
	"1010" when "0000",
	"1001" when "0001",
	"1000" when "0010",
	"0111" when "0011",
	"0110" when "0100",
	"0101" when "0101",
	"0100" when "0110",
	"0011" when "0111",
	"0010" when "1000",
	"0001" when "1001",
	"0000" when "1010",
	"1111" when "1011",
	"1110" when "1100",
	"1101" when "1101",
	"1100" when "1110",
	"1011" when "1111",
	"XXXX" when others;
	


end Behavioral;

