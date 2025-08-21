--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat.vhf
-- /___/   /\     Timestamp : 10/22/2024 13:55:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/XilinxPrj/UCISWL1_Z1/schemat.vhf -w C:/XilinxPrj/UCISWL1_Z1/schemat.sch
--Design Name: schemat
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemat is
   port ( X : in    std_logic_vector (3 downto 0); 
          Y : out   std_logic_vector (3 downto 0));
end schemat;

architecture BEHAVIORAL of schemat is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_61 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>XLXN_23,
                I1=>X(1),
                O=>Y(1));
   
   XLXI_3 : XOR2
      port map (I0=>XLXN_2,
                I1=>X(2),
                O=>Y(2));
   
   XLXI_4 : AND2
      port map (I0=>X(1),
                I1=>X(0),
                O=>XLXN_2);
   
   XLXI_6 : XNOR2
      port map (I0=>X(0),
                I1=>XLXN_8,
                O=>Y(0));
   
   XLXI_19 : AND3
      port map (I0=>X(1),
                I1=>X(2),
                I2=>X(3),
                O=>XLXN_8);
   
   XLXI_27 : AND2
      port map (I0=>X(3),
                I1=>X(2),
                O=>XLXN_23);
   
   XLXI_59 : AND3
      port map (I0=>X(0),
                I1=>X(2),
                I2=>X(1),
                O=>XLXN_61);
   
   XLXI_60 : XNOR2
      port map (I0=>X(3),
                I1=>XLXN_61,
                O=>Y(3));
   
end BEHAVIORAL;


