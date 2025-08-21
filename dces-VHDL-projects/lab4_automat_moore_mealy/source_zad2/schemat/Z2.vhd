----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:28:53 12/03/2024 
-- Design Name: 
-- Module Name:    Z2 - Behavioral 
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

entity Z2 is
    Port ( X : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Y : out  STD_LOGIC;
			  Q: out std_logic_vector (2 downto 0)
			  );
end Z2;

architecture Behavioral of Z2 is
type state_type is (A, B, C, D, E, F);
signal state, next_state : state_type;
begin
SYNC_PROC : process(CLK)
	begin 
		if rising_edge(CLK) then
			if RST = '1' then
				state <= A; 
			elsif CE = '1' then 
				state <= next_state;
			end if;
		end if;
	end process SYNC_PROC;
	
	NEXT_STATE_DECODE: process(state, X)
	begin
		next_state <= state;
		case state is
			when A =>
				if X = '0' then
					next_state <= B;
				end if;
			
			when B => 
				if X = '0' then
					next_state <= C;
				else 
					next_state <= A;
				end if;
			
			when C =>
				if X = '1' then
					next_state <= D;
				end if;
			
			when D =>
				if X = '1' then
					next_state <= E;
				else 
					next_state <= B;
				end if;
			
			when E =>
				if X = '1' then
					next_state <= F;
				else 
					next_state <= B;
				end if;
				
			when F =>
				if X = '1' then
					next_state <= A;
				else 
					next_state <= B;
				end if;
				

		
		end case;
	end process NEXT_STATE_DECODE;
			
	OUTPUT_DECODE: process (state, X)
	begin
		if state = F and X = '1' then
			Q <= "101";
			Y <= '1';
		else
			Y <= '0';
		end if;
		if state = A then
			Q <= "000";
		elsif state = B then
			Q <= "001";
		elsif state = C then
			Q <= "010";
		elsif state = D then
			Q <= "011";
		elsif state = E then
			Q <= "100";
		end if;	
		
		
		
	end process OUTPUT_DECODE;

end Behavioral;

