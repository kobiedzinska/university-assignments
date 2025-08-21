----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:35 12/17/2024 
-- Design Name: 
-- Module Name:    Z1 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Z1 is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           DO_RDY : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Y : out  STD_LOGIC;
           LINE : out  STD_LOGIC_VECTOR (63 downto 0);
           BLANK : out  STD_LOGIC_VECTOR (15 downto 0));
end Z1;

architecture Behavioral of Z1 is
	type state_type is (Q0, Q1, Q2, Q3, Q4);
	signal state : state_type := Q0;
	signal next_state : state_type := Q0;

begin

		blank<="1111111111111110";
		process1 : process (CLK)
		BEGIN
			if rising_edge(CLK) then 
				if RST = '1' then
					state <= Q0;
				else 
					state <= next_state;
				end if;
			end if;
		end process process1;
		
		
		
		process2 : process (state, DO, DO_Rdy, F0)
		BEGIN
			next_state <= state;
			if DO_Rdy = '1' then
				case state is 
					when Q0 => 
						if F0 ='0' then
							if DO = X"32" then
								next_state <= Q1;
							end if;
						end if;
						
					when Q1 => 
						if F0 ='0' then
							if DO = X"42" then
								next_state <= Q2;
							elsif DO = X"32" then

							else
								next_state <= Q0;
							end if;
						end if;
						
					when Q2 => 
						if F0 ='0' then
							if DO = X"42" then
								next_state <= Q3;
							elsif DO = X"32" then
								next_state <= Q1;
							else
								next_state <= Q0;
							end if;
						end if;
						
					when Q3 => 
						if F0 ='0' then
							if DO = X"44" then
								next_state <= Q4;
							elsif DO = X"32" then
								next_state <= Q1;
							else
								next_state <= Q0;
							end if;
						end if;
						
					when Q4 => 
						if F0 ='0' then
							if DO = X"32" then
								next_state <= Q1;
							else
								next_state <= Q0;
							end if;
						end if;

				end case;
			end if;
			
		END process process2;
		
		
		process3: process(state)
		begin
			case state is 
					when Q0 => 
					--01010001 
						
						--LINE<="0000000000000000000000000000000000000000000000000000000000110000";
						
					when Q1 => 
						
						--LINE<="0000000000000000000000000000000000000000000000000000000000110001";
						
					when Q2 => 
						
						--LINE<="0000000000000000000000000000000000000000000000000000000000110010";
						
					when Q3 => 
						
						--LINE<="0000000000000000000000000000000000000000000000000000000000110011";
						
					when Q4 => 
						
						--LINE<="0000000000000000000000000000000000000000000000000000000000110100";

				end case;
		
		
		
		end process process3;
		
		
		
		y <= '1' when state = Q4
		else '0';

end Behavioral;	

