--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:19 12/10/2024
-- Design Name:   
-- Module Name:   C:/XilinxPrj/UCiSWL5_Z1/Z1test.vhd
-- Project Name:  UCiSWL5_Z1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Z1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Z1test IS
END Z1test;
 
ARCHITECTURE behavior OF Z1test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Z1
    PORT(
			DO : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			DO_RDY : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			RST : IN STD_LOGIC;
			Y : OUT STD_LOGIC
        );
    END COMPONENT;
    
SIGNAL DO : STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');
SIGNAL DO_RDY : STD_LOGIC := '0';
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL RST : STD_LOGIC := '0';

SIGNAL Y : STD_LOGIC;
CONSTANT CLK_PERIOD : TIME := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Z1 PORT MAP (
			DO => DO,
			DO_RDY => DO_RDY,
			CLK => CLK,
			RST => RST,
			Y => Y
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
	
	CLK <= NOT CLK after CLK_PERIOD;
	
	process1  : process
		type key_type is array(NATURAL range <>) of STD_LOGIC_VECTOR (7 DOWNTO 0);
		variable input : key_type (16 DOWNTO 0) := (
			X"2D", X"22", 
			X"32", X"42", X"42", X"44", 
			X"21", X"35",
			X"32", X"42", X"42", X"32", X"42", X"42", X"44",
			X"1A", X"4D"
			);
			
			constant keyTime : time := 2*clk_period;
			
		begin
				wait until falling_edge(CLK);
				for i in 16 downto 0 loop
					DO_RDY <= '1';
					Do <= input(i);
					wait for keyTime;
					
					DO_RDY <= '0';
					wait for keyTime*5;
					
					DO_RDY <= '1';
					Do <= x"F0";
					wait for keyTime;
					
					DO_RDY <= '0';
					wait for keyTime*2;
					
					DO_RDY <= '1';
					Do <= input(i);
					wait for keyTime;
					
					DO_RDY <= '0';
					wait for keyTime*8;
			
			end loop;
			wait;
		end process process1;
END;
