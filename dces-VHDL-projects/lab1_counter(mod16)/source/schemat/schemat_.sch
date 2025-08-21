<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X(3:0)" />
        <signal name="X(0)" />
        <signal name="XLXN_1(2)" />
        <signal name="X(2)" />
        <signal name="XLXN_1(3)" />
        <signal name="X(3)" />
        <signal name="XLXN_1(1)" />
        <signal name="X(1)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_23" />
        <signal name="XLXN_2" />
        <signal name="XLXN_8" />
        <signal name="XLXN_61" />
        <signal name="Y(3:0)" />
        <signal name="XLXN_11" />
        <signal name="Y(3)" />
        <signal name="XLXN_12" />
        <signal name="Y(2)" />
        <signal name="XLXN_13" />
        <signal name="Y(1)" />
        <signal name="XLXN_14" />
        <signal name="Y(0)" />
        <port polarity="Input" name="X(3:0)" />
        <port polarity="Output" name="Y(3:0)" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="X(3)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="X(1)" name="I1" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="X(1)" name="I0" />
            <blockpin signalname="X(0)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="X(1)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="X(3)" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="X(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_59">
            <blockpin signalname="X(0)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="X(1)" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_60">
            <blockpin signalname="X(3)" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X(3:0)">
            <wire x2="672" y1="1056" y2="1056" x1="496" />
            <wire x2="672" y1="1056" y2="1152" x1="672" />
            <wire x2="672" y1="1152" y2="1200" x1="672" />
            <wire x2="672" y1="1200" y2="1216" x1="672" />
            <wire x2="672" y1="1216" y2="1280" x1="672" />
            <wire x2="672" y1="1280" y2="1344" x1="672" />
        </branch>
        <bustap x2="768" y1="1216" y2="1216" x1="672" />
        <bustap x2="768" y1="1280" y2="1280" x1="672" />
        <bustap x2="768" y1="1344" y2="1344" x1="672" />
        <bustap x2="768" y1="1152" y2="1152" x1="672" />
        <branch name="X(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1152" type="branch" />
            <wire x2="784" y1="1152" y2="1152" x1="768" />
            <wire x2="1008" y1="1152" y2="1152" x1="784" />
            <wire x2="1008" y1="1152" y2="1664" x1="1008" />
            <wire x2="1664" y1="1664" y2="1664" x1="1008" />
            <wire x2="1008" y1="1664" y2="2096" x1="1008" />
            <wire x2="1712" y1="2096" y2="2096" x1="1008" />
            <wire x2="1968" y1="1152" y2="1152" x1="1008" />
            <wire x2="1968" y1="928" y2="1152" x1="1968" />
            <wire x2="1984" y1="928" y2="928" x1="1968" />
        </branch>
        <branch name="X(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1280" type="branch" />
            <wire x2="784" y1="1280" y2="1280" x1="768" />
            <wire x2="1376" y1="1280" y2="1280" x1="784" />
            <wire x2="1632" y1="1280" y2="1280" x1="1376" />
            <wire x2="1376" y1="1280" y2="1632" x1="1376" />
            <wire x2="1952" y1="1632" y2="1632" x1="1376" />
            <wire x2="1376" y1="1632" y2="2032" x1="1376" />
            <wire x2="1712" y1="2032" y2="2032" x1="1376" />
            <wire x2="1696" y1="864" y2="864" x1="1376" />
            <wire x2="1376" y1="864" y2="1280" x1="1376" />
        </branch>
        <branch name="X(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1344" type="branch" />
            <wire x2="784" y1="1344" y2="1344" x1="768" />
            <wire x2="1328" y1="1344" y2="1344" x1="784" />
            <wire x2="1632" y1="1344" y2="1344" x1="1328" />
            <wire x2="1328" y1="1344" y2="2144" x1="1328" />
            <wire x2="2000" y1="2144" y2="2144" x1="1328" />
            <wire x2="1696" y1="800" y2="800" x1="1328" />
            <wire x2="1328" y1="800" y2="1344" x1="1328" />
        </branch>
        <branch name="X(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1216" type="branch" />
            <wire x2="784" y1="1216" y2="1216" x1="768" />
            <wire x2="1424" y1="1216" y2="1216" x1="784" />
            <wire x2="1952" y1="1216" y2="1216" x1="1424" />
            <wire x2="1424" y1="1216" y2="1728" x1="1424" />
            <wire x2="1664" y1="1728" y2="1728" x1="1424" />
            <wire x2="1424" y1="1728" y2="1968" x1="1424" />
            <wire x2="1712" y1="1968" y2="1968" x1="1424" />
            <wire x2="1696" y1="928" y2="928" x1="1424" />
            <wire x2="1424" y1="928" y2="1216" x1="1424" />
        </branch>
        <text style="fontsize:24;fontname:Arial" x="2256" y="712">Y0</text>
        <instance x="1632" y="1408" name="XLXI_27" orien="R0" />
        <instance x="1952" y="1344" name="XLXI_1" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1936" y1="1312" y2="1312" x1="1888" />
            <wire x2="1952" y1="1280" y2="1280" x1="1936" />
            <wire x2="1936" y1="1280" y2="1312" x1="1936" />
        </branch>
        <rect width="612" x="1652" y="1144" height="308" />
        <text style="fontsize:24;fontname:Arial" x="1880" y="1124">Y1</text>
        <instance x="1952" y="1760" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1952" y1="1696" y2="1696" x1="1920" />
        </branch>
        <instance x="1664" y="1792" name="XLXI_4" orien="R0" />
        <rect width="624" x="1644" y="1544" height="288" />
        <text style="fontsize:24;fontname:Arial" x="1880" y="1524">Y2</text>
        <instance x="1696" y="992" name="XLXI_19" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1984" y1="864" y2="864" x1="1952" />
        </branch>
        <instance x="1984" y="992" name="XLXI_6" orien="R0" />
        <rect width="676" x="1596" y="732" height="292" />
        <instance x="1712" y="2160" name="XLXI_59" orien="R0" />
        <instance x="2000" y="2208" name="XLXI_60" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="1984" y1="2032" y2="2032" x1="1968" />
            <wire x2="1984" y1="2032" y2="2080" x1="1984" />
            <wire x2="2000" y1="2080" y2="2080" x1="1984" />
        </branch>
        <rect width="632" x="1648" y="1916" height="324" />
        <text style="fontsize:24;fontname:Arial" x="1920" y="1900">Y3</text>
        <bustap x2="2912" y1="1200" y2="1200" x1="2816" />
        <bustap x2="2912" y1="1264" y2="1264" x1="2816" />
        <bustap x2="2912" y1="1328" y2="1328" x1="2816" />
        <bustap x2="2912" y1="1392" y2="1392" x1="2816" />
        <branch name="Y(3:0)">
            <wire x2="2816" y1="1120" y2="1200" x1="2816" />
            <wire x2="2816" y1="1200" y2="1264" x1="2816" />
            <wire x2="2816" y1="1264" y2="1328" x1="2816" />
            <wire x2="2816" y1="1328" y2="1392" x1="2816" />
            <wire x2="2816" y1="1392" y2="1424" x1="2816" />
        </branch>
        <branch name="Y(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1392" type="branch" />
            <wire x2="2992" y1="2112" y2="2112" x1="2256" />
            <wire x2="2928" y1="1392" y2="1392" x1="2912" />
            <wire x2="2992" y1="1392" y2="1392" x1="2928" />
            <wire x2="2992" y1="1392" y2="2112" x1="2992" />
        </branch>
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1328" type="branch" />
            <wire x2="2976" y1="1664" y2="1664" x1="2208" />
            <wire x2="2928" y1="1328" y2="1328" x1="2912" />
            <wire x2="2976" y1="1328" y2="1328" x1="2928" />
            <wire x2="2976" y1="1328" y2="1664" x1="2976" />
        </branch>
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1264" type="branch" />
            <wire x2="2272" y1="1248" y2="1248" x1="2208" />
            <wire x2="2272" y1="1232" y2="1248" x1="2272" />
            <wire x2="2992" y1="1232" y2="1232" x1="2272" />
            <wire x2="2992" y1="1232" y2="1264" x1="2992" />
            <wire x2="2928" y1="1264" y2="1264" x1="2912" />
            <wire x2="2992" y1="1264" y2="1264" x1="2928" />
        </branch>
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1200" type="branch" />
            <wire x2="3008" y1="896" y2="896" x1="2240" />
            <wire x2="3008" y1="896" y2="1200" x1="3008" />
            <wire x2="2928" y1="1200" y2="1200" x1="2912" />
            <wire x2="3008" y1="1200" y2="1200" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="496" y="1056" name="X(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1120" name="Y(3:0)" orien="R0" />
    </sheet>
</drawing>