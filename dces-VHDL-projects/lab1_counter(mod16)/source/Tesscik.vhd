-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT schemat
          PORT(

                  WE : IN std_logic_vector(3 downto 0);       
                  WY : OUT std_logic_vector(3 downto 0)
                  );
          END COMPONENT;

          SIGNAL WE :  std_logic_vector(3 downto 0);
          SIGNAL WY :  std_logic_vector(3 downto 0);

  BEGIN

  -- Component Instantiation
          uut: schemat PORT MAP(
                  WE => WE,
                  WY => WY
          );
				WE <= "0000", "0001" after 100 ns, "0010" after 200 ns, "0011" after 300 ns, "0100" after 400 ns, "0101" after 500 ns, "0110" after 600 ns, "0111" after 700 ns, "1000" after 800 ns, "1001" after 900 ns,"1010" after 1000 ns, 
				"1011" after 1100 ns, "1100" after 1200 ns, "1101" after 1300 ns, "1110" after 1400 ns,"1111" after 1500 ns;

  END;
