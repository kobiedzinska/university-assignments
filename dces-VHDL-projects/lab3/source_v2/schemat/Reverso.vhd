----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:44 11/19/2024 
-- Design Name: 
-- Module Name:    Reverso - Behavioral 
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
LIBRARY UNISIM;
use UNISIM.vcomponents.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reverso is
	PORT(
		dir: IN std_logic;
		clk: IN std_logic;
		Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
end Reverso;

architecture Behavioral of Reverso is
	SIGNAL outQ : std_logic_vector(3 downto 0);
	SIGNAL inD : std_logic_vector(2 downto 0);
	
	
begin
	D_flipflop : FDCE port map (CLR => '0', CE => '1', D => inD(0), C => CLK, Q => outQ(0));
	D_flipflop1 : FDCE port map (CLR => '0', CE => '1', D => inD(1), C => CLK, Q => outQ(1));
	D_flipflop2 : FDCE port map (CLR => '0', CE => '1', D => inD(2), C => CLK, Q => outQ(2));
	
	outQ(3) <= dir;
	Q(0) <= outQ(0);
	Q(1) <= outQ(1);
	Q(2) <= outQ(2);	
	
	with outQ select inD <=
	"001" when "0000",
	"010" when "0001",
	"011" when "0010",
	"101" when "0011",
	"111" when "0100",
	"110" when "0101",
	"100" when "0110",
	"000" when "0111",
	"111" when "1000",
	"000" when "1001",
	"001" when "1010",
	"010" when "1011",
	"110" when "1100",
	"011" when "1101",
	"101" when "1110",
	"100" when "1111",
	"XXX" when others;

end Behavioral;

