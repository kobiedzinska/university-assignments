--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:07:47 11/19/2024
-- Design Name:   
-- Module Name:   C:/XilinxPrj/UCISW3/ModuloTestBench.vhd
-- Project Name:  UCISW3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Modulo
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
 
ENTITY ModuloTestBench IS
END ModuloTestBench;
 
ARCHITECTURE behavior OF ModuloTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Modulo
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y1 : OUT  std_logic_vector(3 downto 0);
         Y2 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y1 : std_logic_vector(3 downto 0);
   signal Y2 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Modulo PORT MAP (
          X => X,
          Y1 => Y1,
          Y2 => Y2
        );

   -- Clock process definitions

   -- Stimulus process
			X <= "0000", "0001" after 100 ns, "0010" after 200 ns, "0011" after 300 ns, "0100" after 400 ns, "0101" after 500 ns, "0110" after 600 ns, "0111" after 700 ns, "1000" after 800 ns,  "1001" after 900 ns, "1010" after 1000 ns,
			"1011" after 1100 ns, "1100" after 1200 ns, "1101" after 1300 ns, "1110" after 1400 ns, "1111" after 1500 ns;

      


END;
