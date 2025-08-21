--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:27:00 11/19/2024
-- Design Name:   
-- Module Name:   C:/XilinxPrj/UCISW3v2/ReversoTestBench.vhd
-- Project Name:  UCISW3v2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reverso
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
 
ENTITY ReversoTestBench IS
END ReversoTestBench;
 
ARCHITECTURE behavior OF ReversoTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reverso
    PORT(
         dir : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dir : std_logic;
	signal clk : std_logic := '0';
 	--Outputs
   signal Q : std_logic_vector(2 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reverso PORT MAP (
          dir => dir,
          clk => clk,
          Q => Q
        );

   -- Clock process definitions
		clk <= not clk after 50 ns;
		dir <= '0', '1' after 800 ns;

END;
