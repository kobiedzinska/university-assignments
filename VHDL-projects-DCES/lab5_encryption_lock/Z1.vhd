----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:37 12/10/2024 
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
--library UNISIM;\
-- use UNISIM.VComponents.all;

entity Z1 is
	PORT (
			DO : in STD_LOGIC_VECTOR(7 downto 0);
			DO_Rdy : in STD_LOGIC;
			CLK : in STD_LOGIC;
			RST : in STD_LOGIC;
			Y : out STD_LOGIC;
			start: out std_logic
			);
end Z1;

architecture Behavioral of Z1 is
	type state_type is (Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12);
	signal state : state_type := Q0;
	signal next_state : state_type := Q0;
	signal iter : UNSIGNED (1 downto 0) := "00";
	

begin 
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
	
	process2 : process (state, DO, DO_Rdy)
	BEGIN
		next_state <= state;
		if DO_Rdy = '1' then
			case state is 
				when Q0 => 
				iter <= "00";
					if DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q1 => 
				iter <= "00";
					if DO = X"F0" then
						next_state <= Q2;
					elsif DO = X"32" then

					else
						next_state <= Q0;
					end if;
					
				when Q2 => 
					if DO = X"32" then
						next_state <= Q3;
					else
						next_state <= Q0;
					end if;
					
				when Q3 => 
					if DO = X"42" then
						next_state <= Q4;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q4 => 
					if DO = X"F0" then
						next_state <= Q5;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;

				when Q5 => 
					if DO = X"42" then
						next_state <= Q6;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;

				when Q6 => 
					if DO = X"42" then
						next_state <= Q7;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;

				when Q7 => 
					if DO = X"F0" then
						next_state <= Q8;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;

				when Q8 => 
					if DO = X"42" then
						next_state <= Q9;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q9 => 
					if DO = X"44" then
						next_state <= Q10;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q10 => 
					if DO = X"F0" then
						next_state <= Q11;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q11 => 
					if DO = X"44" then
						next_state <= Q12;
					elsif DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;
					
				when Q12 => 
					
					if DO = X"32" then
						next_state <= Q1;
					else
						next_state <= Q0;
					end if;

			end case;
		end if;
		
	END process process2;
	
		y <= '1' when state = Q12
		else '0';
		
	process3: process (state, next_state, DO_Rdy)
	begin
		if state=Q11 and next_state=Q12 and DO_Rdy='1' then
			start<='1';		
		else 
			start<='0';
		end if;
	end process process3;



end Behavioral;

