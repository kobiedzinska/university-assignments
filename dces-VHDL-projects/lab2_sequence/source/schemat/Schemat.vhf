--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Schemat.vhf
-- /___/   /\     Timestamp : 11/05/2024 13:56:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/XilinxPrj/Sekwencyjny/Schemat.vhf -w C:/XilinxPrj/Sekwencyjny/Schemat.sch
--Design Name: Schemat
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

entity Schemat is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          DIR : in    std_logic; 
          Q   : out   std_logic_vector (2 downto 0));
end Schemat;

architecture BEHAVIORAL of Schemat is
   attribute BOX_TYPE   : string ;
   signal XLXN_69  : std_logic;
   signal XLXN_70  : std_logic;
   signal XLXN_71  : std_logic;
   signal XLXN_72  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_74  : std_logic;
   signal XLXN_83  : std_logic;
   signal XLXN_84  : std_logic;
   signal XLXN_86  : std_logic;
   signal XLXN_87  : std_logic;
   signal XLXN_94  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_97  : std_logic;
   signal XLXN_100 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_116 : std_logic;
   signal XLXN_117 : std_logic;
   signal XLXN_129 : std_logic;
   signal XLXN_130 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal Q_DUMMY  : std_logic_vector (2 downto 0);
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q(2 downto 0) <= Q_DUMMY(2 downto 0);
   XLXI_35 : OR3
      port map (I0=>XLXN_73,
                I1=>XLXN_72,
                I2=>XLXN_74,
                O=>XLXN_69);
   
   XLXI_36 : OR2
      port map (I0=>Q_DUMMY(1),
                I1=>XLXN_71,
                O=>XLXN_70);
   
   XLXI_37 : AND2B1
      port map (I0=>Q_DUMMY(0),
                I1=>XLXN_70,
                O=>XLXN_72);
   
   XLXI_38 : AND3B2
      port map (I0=>DIR,
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                O=>XLXN_73);
   
   XLXI_39 : AND3B1
      port map (I0=>Q_DUMMY(1),
                I1=>DIR,
                I2=>Q_DUMMY(2),
                O=>XLXN_74);
   
   XLXI_40 : XNOR2
      port map (I0=>DIR,
                I1=>Q_DUMMY(2),
                O=>XLXN_71);
   
   XLXI_41 : OR3
      port map (I0=>XLXN_86,
                I1=>XLXN_87,
                I2=>XLXN_84,
                O=>XLXN_83);
   
   XLXI_42 : AND2
      port map (I0=>XLXN_94,
                I1=>Q_DUMMY(0),
                O=>XLXN_84);
   
   XLXI_43 : AND2
      port map (I0=>XLXN_95,
                I1=>Q_DUMMY(2),
                O=>XLXN_86);
   
   XLXI_44 : AND3B2
      port map (I0=>Q_DUMMY(0),
                I1=>DIR,
                I2=>Q_DUMMY(1),
                O=>XLXN_87);
   
   XLXI_49 : XNOR2
      port map (I0=>DIR,
                I1=>Q_DUMMY(1),
                O=>XLXN_94);
   
   XLXI_50 : OR2
      port map (I0=>XLXN_97,
                I1=>XLXN_109,
                O=>XLXN_95);
   
   XLXI_51 : AND2B1
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>XLXN_97);
   
   XLXI_52 : AND2
      port map (I0=>DIR,
                I1=>XLXN_100,
                O=>XLXN_109);
   
   XLXI_53 : OR2B1
      port map (I0=>Q_DUMMY(0),
                I1=>Q_DUMMY(0),
                O=>XLXN_100);
   
   XLXI_54 : OR3
      port map (I0=>XLXN_130,
                I1=>XLXN_129,
                I2=>XLXN_117,
                O=>XLXN_116);
   
   XLXI_55 : AND2
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                O=>XLXN_117);
   
   XLXI_59 : AND3B1
      port map (I0=>DIR,
                I1=>Q_DUMMY(0),
                I2=>XLXN_138,
                O=>XLXN_129);
   
   XLXI_60 : AND3B1
      port map (I0=>Q_DUMMY(0),
                I1=>XLXN_137,
                I2=>DIR,
                O=>XLXN_130);
   
   XLXI_61 : OR2
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                O=>XLXN_138);
   
   XLXI_62 : OR2B1
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(2),
                O=>XLXN_137);
   
   XLXI_64 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_116,
                Q=>Q_DUMMY(2));
   
   XLXI_65 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_83,
                Q=>Q_DUMMY(1));
   
   XLXI_66 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_69,
                Q=>Q_DUMMY(0));
   
end BEHAVIORAL;


