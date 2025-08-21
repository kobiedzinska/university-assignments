--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:46 12/17/2024
-- Design Name:   
-- Module Name:   C:/XilinxPrj/UCiSW_L6/Z1_TestBench.vhd
-- Project Name:  UCiSW_L6
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
USE ieee.numeric_std.ALL;
 
ENTITY Z1_TestBench IS
END Z1_TestBench;
 
ARCHITECTURE behavior OF Z1_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Z1
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         DO_RDY : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Y : OUT  std_logic;
         LINE : OUT  std_logic_vector(63 downto 0);
         BLANK : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal DO_RDY : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   signal LINE : std_logic_vector(63 downto 0);
   signal BLANK : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Z1 PORT MAP (
          DO => DO,
          E0 => E0,
          F0 => F0,
          DO_RDY => DO_RDY,
          RST => RST,
          CLK => CLK,
          Y => Y,
          LINE => LINE,
          BLANK => BLANK
        );

   -- Clock process definitions
   
	CLK <= NOT CLK after CLK_PERIOD;
 

   -- Stimulus process
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
					F0<='0';
					DO_RDY <= '1';
					Do <= input(i);
					wait for keyTime;
					

					DO_RDY <= '0';
					wait for 2*keyTime;
					
					F0<='1';
					DO_RDY <= '1';
					wait for keyTime;
					

					DO_RDY <= '0';
					wait for 8*keyTime;
				
				
				
			
			end loop;
			wait;
		end process process1;

END;
