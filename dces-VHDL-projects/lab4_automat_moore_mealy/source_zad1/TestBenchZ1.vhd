--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:48:07 12/03/2024
-- Design Name:   
-- Module Name:   C:/XilinxPrj/UCISW4_Z1/TestBenchZ1.vhd
-- Project Name:  UCISW4_Z1
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
 
ENTITY TestBenchZ1 IS
END TestBenchZ1;
 
ARCHITECTURE behavior OF TestBenchZ1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Z1
    PORT(
         X : IN  std_logic;
         CE : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal CE : std_logic := '1';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	signal example: std_logic_vector ( 20 downto 0) :="011001111001001110110";
 	--Outputs
	
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Z1 PORT MAP (
          X => X,
          CE => CE,
          CLK => CLK,
          RST => RST,
          Y => Y
        );

   -- Clock process definitions
   CLK_process :process
   begin 
		CLK <= '0';
		--wait for 10 ns;
		wait for CLK_period/2;
		CLK <= '1';
		--wait for 10 ns;
		wait for CLK_period/2;
   end process;   
 
  
   -- Stimulus process 
   stim_proc: process 
   begin		  
	 
		for i in 20 downto 0 loop
		--	wait for 17 ns;
			wait for 2.5 ns;
			X <= example(i); 
		--	wait for 25 ns; 
			wait for 22.5 ns;
		end loop;
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for CLK_period*10;

     
		wait;
   end process;

END;
