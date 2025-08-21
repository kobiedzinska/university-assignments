<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4">
        </signal>
        <signal name="Q(0)" />
        <signal name="Q(2)" />
        <signal name="DIR" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_21" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_37" />
        <signal name="XLXN_39" />
        <signal name="XLXN_42" />
        <signal name="Q(1)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_89" />
        <signal name="XLXN_84" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_97" />
        <signal name="XLXN_100" />
        <signal name="XLXN_102" />
        <signal name="CLR" />
        <signal name="XLXN_104" />
        <signal name="CLK" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115" />
        <signal name="XLXN_116" />
        <signal name="XLXN_117" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_123" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="XLXN_128" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="CE" />
        <signal name="XLXN_144" />
        <signal name="XLXN_147" />
        <signal name="XLXN_148" />
        <signal name="Q(2:0)" />
        <port polarity="Input" name="DIR" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CE" />
        <port polarity="Output" name="Q(2:0)" />
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="or2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="or3" name="XLXI_35">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_74" name="I2" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_36">
            <blockpin signalname="Q(1)" name="I0" />
            <blockpin signalname="XLXN_71" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_37">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="XLXN_70" name="I1" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_38">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="Q(1)" name="I2" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_39">
            <blockpin signalname="Q(1)" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="Q(2)" name="I2" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_40">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_41">
            <blockpin signalname="XLXN_86" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="XLXN_84" name="I2" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="Q(0)" name="I1" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="XLXN_95" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_44">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="Q(1)" name="I2" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_49">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="Q(1)" name="I1" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_50">
            <blockpin signalname="XLXN_97" name="I0" />
            <blockpin signalname="XLXN_109" name="I1" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_51">
            <blockpin signalname="Q(1)" name="I0" />
            <blockpin signalname="Q(0)" name="I1" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_52">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="XLXN_109" name="O" />
        </block>
        <block symbolname="or2b1" name="XLXI_53">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="Q(0)" name="I1" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_54">
            <blockpin signalname="XLXN_130" name="I0" />
            <blockpin signalname="XLXN_129" name="I1" />
            <blockpin signalname="XLXN_117" name="I2" />
            <blockpin signalname="XLXN_116" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_55">
            <blockpin signalname="Q(2)" name="I0" />
            <blockpin signalname="Q(1)" name="I1" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_59">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="Q(0)" name="I1" />
            <blockpin signalname="XLXN_138" name="I2" />
            <blockpin signalname="XLXN_129" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_60">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="XLXN_137" name="I1" />
            <blockpin signalname="DIR" name="I2" />
            <blockpin signalname="XLXN_130" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_61">
            <blockpin signalname="Q(2)" name="I0" />
            <blockpin signalname="Q(1)" name="I1" />
            <blockpin signalname="XLXN_138" name="O" />
        </block>
        <block symbolname="or2b1" name="XLXI_62">
            <blockpin signalname="Q(1)" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_137" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_64">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_116" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_65">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_83" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_66">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_69" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="528" y="1152" name="DIR" orien="R180" />
        <branch name="DIR">
            <wire x2="944" y1="1152" y2="1152" x1="528" />
            <wire x2="960" y1="1152" y2="1152" x1="944" />
            <wire x2="1024" y1="1152" y2="1152" x1="960" />
            <wire x2="960" y1="1152" y2="2224" x1="960" />
            <wire x2="1664" y1="2224" y2="2224" x1="960" />
            <wire x2="960" y1="2224" y2="2336" x1="960" />
            <wire x2="1648" y1="2336" y2="2336" x1="960" />
            <wire x2="944" y1="1152" y2="1488" x1="944" />
            <wire x2="1264" y1="1488" y2="1488" x1="944" />
            <wire x2="736" y1="160" y2="1136" x1="736" />
            <wire x2="1024" y1="1136" y2="1136" x1="736" />
            <wire x2="1024" y1="1136" y2="1152" x1="1024" />
            <wire x2="1072" y1="1136" y2="1136" x1="1024" />
            <wire x2="1360" y1="1136" y2="1136" x1="1072" />
            <wire x2="1456" y1="160" y2="160" x1="736" />
            <wire x2="880" y1="288" y2="288" x1="816" />
            <wire x2="816" y1="288" y2="400" x1="816" />
            <wire x2="1024" y1="400" y2="400" x1="816" />
            <wire x2="1024" y1="400" y2="1136" x1="1024" />
            <wire x2="1456" y1="544" y2="544" x1="960" />
            <wire x2="960" y1="544" y2="1152" x1="960" />
            <wire x2="1072" y1="976" y2="1136" x1="1072" />
            <wire x2="1120" y1="976" y2="976" x1="1072" />
        </branch>
        <text style="fontsize:56;fontname:Arial" x="308" y="1460">CLK</text>
        <text style="fontsize:56;fontname:Arial" x="308" y="1364">CLR</text>
        <text style="fontsize:36;fontname:Arial" x="1480" y="176">D0</text>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="1264" type="branch" />
            <wire x2="848" y1="128" y2="560" x1="848" />
            <wire x2="1264" y1="560" y2="560" x1="848" />
            <wire x2="1264" y1="560" y2="624" x1="1264" />
            <wire x2="2704" y1="624" y2="624" x1="1264" />
            <wire x2="2704" y1="624" y2="816" x1="2704" />
            <wire x2="2704" y1="816" y2="1264" x1="2704" />
            <wire x2="2704" y1="1264" y2="1744" x1="2704" />
            <wire x2="2816" y1="1264" y2="1264" x1="2704" />
            <wire x2="3072" y1="1264" y2="1264" x1="2816" />
            <wire x2="3232" y1="1264" y2="1264" x1="3072" />
            <wire x2="1216" y1="128" y2="128" x1="848" />
            <wire x2="1216" y1="128" y2="224" x1="1216" />
            <wire x2="1456" y1="224" y2="224" x1="1216" />
            <wire x2="880" y1="1072" y2="1632" x1="880" />
            <wire x2="992" y1="1632" y2="1632" x1="880" />
            <wire x2="1088" y1="1072" y2="1072" x1="880" />
            <wire x2="1360" y1="1072" y2="1072" x1="1088" />
            <wire x2="1088" y1="816" y2="912" x1="1088" />
            <wire x2="1120" y1="912" y2="912" x1="1088" />
            <wire x2="1088" y1="912" y2="1072" x1="1088" />
            <wire x2="2544" y1="816" y2="816" x1="1088" />
            <wire x2="2544" y1="816" y2="1024" x1="2544" />
            <wire x2="2688" y1="816" y2="816" x1="2544" />
            <wire x2="2704" y1="816" y2="816" x1="2688" />
            <wire x2="1152" y1="384" y2="384" x1="1136" />
            <wire x2="1136" y1="384" y2="624" x1="1136" />
            <wire x2="1264" y1="624" y2="624" x1="1136" />
            <wire x2="1168" y1="320" y2="320" x1="1152" />
            <wire x2="1152" y1="320" y2="384" x1="1152" />
            <wire x2="1248" y1="1888" y2="2016" x1="1248" />
            <wire x2="1280" y1="2016" y2="2016" x1="1248" />
            <wire x2="1248" y1="2016" y2="2560" x1="1248" />
            <wire x2="1312" y1="2560" y2="2560" x1="1248" />
            <wire x2="1600" y1="1888" y2="1888" x1="1248" />
            <wire x2="1680" y1="1888" y2="1888" x1="1600" />
            <wire x2="1456" y1="416" y2="416" x1="1376" />
            <wire x2="1376" y1="416" y2="592" x1="1376" />
            <wire x2="2688" y1="592" y2="592" x1="1376" />
            <wire x2="2688" y1="592" y2="816" x1="2688" />
            <wire x2="1600" y1="1744" y2="1888" x1="1600" />
            <wire x2="2704" y1="1744" y2="1744" x1="1600" />
            <wire x2="2544" y1="1024" y2="1024" x1="2432" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="2184" y="1820">D2</text>
        <branch name="XLXN_69">
            <wire x2="2096" y1="320" y2="320" x1="2064" />
        </branch>
        <instance x="1808" y="448" name="XLXI_35" orien="R0" />
        <instance x="1456" y="416" name="XLXI_37" orien="R0" />
        <instance x="1456" y="608" name="XLXI_38" orien="R0" />
        <instance x="1456" y="288" name="XLXI_39" orien="R0" />
        <branch name="XLXN_70">
            <wire x2="1456" y1="288" y2="288" x1="1424" />
        </branch>
        <instance x="1168" y="384" name="XLXI_36" orien="R0" />
        <branch name="XLXN_71">
            <wire x2="1168" y1="256" y2="256" x1="1136" />
        </branch>
        <instance x="880" y="352" name="XLXI_40" orien="R0" />
        <branch name="XLXN_72">
            <wire x2="1808" y1="320" y2="320" x1="1712" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="1808" y1="480" y2="480" x1="1712" />
            <wire x2="1808" y1="384" y2="480" x1="1808" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="1808" y1="160" y2="160" x1="1712" />
            <wire x2="1808" y1="160" y2="256" x1="1808" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3056" y="1168" type="branch" />
            <wire x2="976" y1="1392" y2="1392" x1="784" />
            <wire x2="784" y1="1392" y2="1760" x1="784" />
            <wire x2="912" y1="1760" y2="1760" x1="784" />
            <wire x2="1024" y1="1760" y2="1760" x1="912" />
            <wire x2="2560" y1="1760" y2="1760" x1="1024" />
            <wire x2="1024" y1="1760" y2="2160" x1="1024" />
            <wire x2="1664" y1="2160" y2="2160" x1="1024" />
            <wire x2="1024" y1="2160" y2="2464" x1="1024" />
            <wire x2="1648" y1="2464" y2="2464" x1="1024" />
            <wire x2="992" y1="1568" y2="1568" x1="912" />
            <wire x2="912" y1="1568" y2="1760" x1="912" />
            <wire x2="928" y1="1232" y2="1456" x1="928" />
            <wire x2="976" y1="1456" y2="1456" x1="928" />
            <wire x2="1104" y1="1232" y2="1232" x1="928" />
            <wire x2="1328" y1="880" y2="880" x1="1104" />
            <wire x2="1408" y1="880" y2="880" x1="1328" />
            <wire x2="1104" y1="880" y2="1200" x1="1104" />
            <wire x2="1360" y1="1200" y2="1200" x1="1104" />
            <wire x2="1104" y1="1200" y2="1232" x1="1104" />
            <wire x2="1328" y1="800" y2="880" x1="1328" />
            <wire x2="2592" y1="800" y2="800" x1="1328" />
            <wire x2="1440" y1="64" y2="352" x1="1440" />
            <wire x2="1456" y1="352" y2="352" x1="1440" />
            <wire x2="2560" y1="64" y2="64" x1="1440" />
            <wire x2="2560" y1="64" y2="320" x1="2560" />
            <wire x2="2560" y1="320" y2="1168" x1="2560" />
            <wire x2="2560" y1="1168" y2="1760" x1="2560" />
            <wire x2="2832" y1="1168" y2="1168" x1="2560" />
            <wire x2="3056" y1="1168" y2="1168" x1="2832" />
            <wire x2="3296" y1="1168" y2="1168" x1="3056" />
            <wire x2="2592" y1="320" y2="320" x1="2560" />
            <wire x2="2592" y1="320" y2="800" x1="2592" />
            <wire x2="2560" y1="320" y2="320" x1="2480" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="2160" y="1176">D1</text>
        <instance x="1680" y="1248" name="XLXI_41" orien="R0" />
        <branch name="XLXN_86">
            <wire x2="1680" y1="1184" y2="1184" x1="1664" />
            <wire x2="1664" y1="1184" y2="1264" x1="1664" />
            <wire x2="1968" y1="1264" y2="1264" x1="1664" />
            <wire x2="1968" y1="1264" y2="1376" x1="1968" />
            <wire x2="1968" y1="1376" y2="1376" x1="1904" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="1664" y1="1136" y2="1136" x1="1616" />
            <wire x2="1680" y1="1120" y2="1120" x1="1664" />
            <wire x2="1664" y1="1120" y2="1136" x1="1664" />
        </branch>
        <instance x="1408" y="1008" name="XLXI_42" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="1744" y1="912" y2="912" x1="1664" />
            <wire x2="1744" y1="912" y2="1024" x1="1744" />
            <wire x2="1744" y1="1024" y2="1024" x1="1664" />
            <wire x2="1664" y1="1024" y2="1056" x1="1664" />
            <wire x2="1680" y1="1056" y2="1056" x1="1664" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1408" y1="944" y2="944" x1="1376" />
        </branch>
        <instance x="1120" y="1040" name="XLXI_49" orien="R0" />
        <instance x="992" y="1696" name="XLXI_51" orien="R0" />
        <instance x="1648" y="1472" name="XLXI_43" orien="R0" />
        <branch name="XLXN_95">
            <wire x2="1648" y1="1408" y2="1408" x1="1632" />
            <wire x2="1632" y1="1408" y2="1488" x1="1632" />
            <wire x2="1936" y1="1488" y2="1488" x1="1632" />
            <wire x2="1936" y1="1488" y2="1648" x1="1936" />
            <wire x2="1936" y1="1648" y2="1648" x1="1872" />
        </branch>
        <instance x="1616" y="1744" name="XLXI_50" orien="R0" />
        <branch name="XLXN_97">
            <wire x2="1264" y1="1600" y2="1600" x1="1248" />
            <wire x2="1264" y1="1600" y2="1680" x1="1264" />
            <wire x2="1616" y1="1680" y2="1680" x1="1264" />
        </branch>
        <instance x="1264" y="1552" name="XLXI_52" orien="R0" />
        <branch name="XLXN_100">
            <wire x2="1264" y1="1424" y2="1424" x1="1232" />
        </branch>
        <instance x="976" y="1520" name="XLXI_53" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="1952" y1="1120" y2="1120" x1="1936" />
            <wire x2="2048" y1="1024" y2="1024" x1="1952" />
            <wire x2="1952" y1="1024" y2="1120" x1="1952" />
        </branch>
        <branch name="CLR">
            <wire x2="672" y1="1360" y2="1360" x1="592" />
            <wire x2="672" y1="1360" y2="2640" x1="672" />
            <wire x2="2288" y1="2640" y2="2640" x1="672" />
            <wire x2="672" y1="1040" y2="1360" x1="672" />
            <wire x2="1776" y1="1040" y2="1040" x1="672" />
            <wire x2="1968" y1="1040" y2="1040" x1="1776" />
            <wire x2="1968" y1="1040" y2="1248" x1="1968" />
            <wire x2="2048" y1="1248" y2="1248" x1="1968" />
            <wire x2="1776" y1="544" y2="1040" x1="1776" />
            <wire x2="2096" y1="544" y2="544" x1="1776" />
            <wire x2="2288" y1="2208" y2="2640" x1="2288" />
        </branch>
        <branch name="CLK">
            <wire x2="656" y1="1456" y2="1456" x1="592" />
            <wire x2="656" y1="1456" y2="2624" x1="656" />
            <wire x2="2240" y1="2624" y2="2624" x1="656" />
            <wire x2="656" y1="1312" y2="1456" x1="656" />
            <wire x2="2000" y1="1312" y2="1312" x1="656" />
            <wire x2="2096" y1="448" y2="448" x1="2000" />
            <wire x2="2000" y1="448" y2="1152" x1="2000" />
            <wire x2="2000" y1="1152" y2="1312" x1="2000" />
            <wire x2="2048" y1="1152" y2="1152" x1="2000" />
            <wire x2="2288" y1="2112" y2="2112" x1="2240" />
            <wire x2="2240" y1="2112" y2="2624" x1="2240" />
        </branch>
        <instance x="1360" y="1264" name="XLXI_44" orien="R0" />
        <branch name="XLXN_109">
            <wire x2="1568" y1="1456" y2="1456" x1="1520" />
            <wire x2="1568" y1="1456" y2="1616" x1="1568" />
            <wire x2="1616" y1="1616" y2="1616" x1="1568" />
        </branch>
        <branch name="XLXN_117">
            <wire x2="1952" y1="1920" y2="1920" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="592" y="1360" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="592" y="1456" name="CLK" orien="R180" />
        <branch name="XLXN_116">
            <wire x2="2288" y1="1984" y2="1984" x1="2208" />
        </branch>
        <instance x="1952" y="2112" name="XLXI_54" orien="R0" />
        <instance x="1680" y="2016" name="XLXI_55" orien="R0" />
        <instance x="1648" y="2528" name="XLXI_60" orien="R0" />
        <instance x="1664" y="2288" name="XLXI_59" orien="R0" />
        <branch name="XLXN_129">
            <wire x2="1872" y1="1984" y2="2064" x1="1872" />
            <wire x2="1984" y1="2064" y2="2064" x1="1872" />
            <wire x2="1984" y1="2064" y2="2160" x1="1984" />
            <wire x2="1952" y1="1984" y2="1984" x1="1872" />
            <wire x2="1984" y1="2160" y2="2160" x1="1920" />
        </branch>
        <branch name="XLXN_130">
            <wire x2="1952" y1="2400" y2="2400" x1="1904" />
            <wire x2="1952" y1="2048" y2="2400" x1="1952" />
        </branch>
        <instance x="1280" y="2144" name="XLXI_61" orien="R0" />
        <instance x="1312" y="2624" name="XLXI_62" orien="R0" />
        <branch name="XLXN_137">
            <wire x2="1600" y1="2528" y2="2528" x1="1568" />
            <wire x2="1600" y1="2400" y2="2528" x1="1600" />
            <wire x2="1648" y1="2400" y2="2400" x1="1600" />
        </branch>
        <branch name="XLXN_138">
            <wire x2="1664" y1="2048" y2="2048" x1="1536" />
            <wire x2="1664" y1="2048" y2="2096" x1="1664" />
        </branch>
        <instance x="2288" y="2240" name="XLXI_64" orien="R0" />
        <instance x="2048" y="1280" name="XLXI_65" orien="R0" />
        <instance x="2096" y="576" name="XLXI_66" orien="R0" />
        <branch name="CE">
            <wire x2="368" y1="784" y2="1232" x1="368" />
            <wire x2="496" y1="1232" y2="1232" x1="368" />
            <wire x2="2080" y1="784" y2="784" x1="368" />
            <wire x2="2080" y1="784" y2="896" x1="2080" />
            <wire x2="1984" y1="896" y2="1088" x1="1984" />
            <wire x2="2048" y1="1088" y2="1088" x1="1984" />
            <wire x2="1984" y1="1088" y2="1296" x1="1984" />
            <wire x2="2272" y1="1296" y2="1296" x1="1984" />
            <wire x2="2272" y1="1296" y2="2048" x1="2272" />
            <wire x2="2288" y1="2048" y2="2048" x1="2272" />
            <wire x2="2080" y1="896" y2="896" x1="1984" />
            <wire x2="2080" y1="384" y2="784" x1="2080" />
            <wire x2="2096" y1="384" y2="384" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="496" y="1232" name="CE" orien="R0" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3088" y="1360" type="branch" />
            <wire x2="784" y1="96" y2="640" x1="784" />
            <wire x2="864" y1="640" y2="640" x1="784" />
            <wire x2="864" y1="640" y2="1344" x1="864" />
            <wire x2="864" y1="1344" y2="1808" x1="864" />
            <wire x2="1136" y1="1808" y2="1808" x1="864" />
            <wire x2="1136" y1="1808" y2="2080" x1="1136" />
            <wire x2="1280" y1="2080" y2="2080" x1="1136" />
            <wire x2="1136" y1="2080" y2="2496" x1="1136" />
            <wire x2="1312" y1="2496" y2="2496" x1="1136" />
            <wire x2="1360" y1="1808" y2="1808" x1="1136" />
            <wire x2="1568" y1="1808" y2="1808" x1="1360" />
            <wire x2="2480" y1="1808" y2="1808" x1="1568" />
            <wire x2="2736" y1="1808" y2="1808" x1="2480" />
            <wire x2="2736" y1="1808" y2="1984" x1="2736" />
            <wire x2="1568" y1="1808" y2="1952" x1="1568" />
            <wire x2="1680" y1="1952" y2="1952" x1="1568" />
            <wire x2="2480" y1="1808" y2="1808" x1="1360" />
            <wire x2="1648" y1="1344" y2="1344" x1="864" />
            <wire x2="1456" y1="96" y2="96" x1="784" />
            <wire x2="880" y1="224" y2="224" x1="864" />
            <wire x2="864" y1="224" y2="640" x1="864" />
            <wire x2="1456" y1="480" y2="480" x1="1408" />
            <wire x2="1408" y1="480" y2="688" x1="1408" />
            <wire x2="2480" y1="688" y2="688" x1="1408" />
            <wire x2="2480" y1="688" y2="1360" x1="2480" />
            <wire x2="2480" y1="1360" y2="1808" x1="2480" />
            <wire x2="2816" y1="1360" y2="1360" x1="2480" />
            <wire x2="3088" y1="1360" y2="1360" x1="2816" />
            <wire x2="3232" y1="1360" y2="1360" x1="3088" />
            <wire x2="2736" y1="1984" y2="1984" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="3376" y="1008" name="Q(2:0)" orien="R0" />
        <branch name="Q(2:0)">
            <wire x2="3376" y1="1008" y2="1008" x1="3328" />
            <wire x2="3328" y1="1008" y2="1168" x1="3328" />
            <wire x2="3328" y1="1168" y2="1264" x1="3328" />
            <wire x2="3328" y1="1264" y2="1360" x1="3328" />
            <wire x2="3328" y1="1360" y2="1376" x1="3328" />
        </branch>
        <bustap x2="3232" y1="1168" y2="1168" x1="3328" />
        <bustap x2="3232" y1="1264" y2="1264" x1="3328" />
        <bustap x2="3232" y1="1360" y2="1360" x1="3328" />
    </sheet>
</drawing>