<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BTN(1:0)" />
        <signal name="BTN(1)" />
        <signal name="BTN(0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(7)" />
        <signal name="SW(6)" />
        <signal name="SW(5)" />
        <signal name="SW(4)" />
        <signal name="SW(3)" />
        <signal name="SW(2)" />
        <signal name="SW(1)" />
        <signal name="SW(0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <port polarity="Input" name="BTN(1:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <blockdef name="MyMC14495">
            <timestamp>2023-10-30T9:19:36</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="MyMC14495" name="XLXI_1">
            <blockpin signalname="SW(0)" name="D0" />
            <blockpin signalname="SW(1)" name="D1" />
            <blockpin signalname="SW(2)" name="D2" />
            <blockpin signalname="SW(3)" name="D3" />
            <blockpin signalname="BTN(1)" name="point" />
            <blockpin signalname="BTN(0)" name="LE" />
            <blockpin signalname="SEGMENT(7)" name="p" />
            <blockpin signalname="SEGMENT(0)" name="a" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(6)" name="g" />
        </block>
        <block symbolname="inv4" name="XLXI_2">
            <blockpin signalname="SW(4)" name="I0" />
            <blockpin signalname="SW(5)" name="I1" />
            <blockpin signalname="SW(6)" name="I2" />
            <blockpin signalname="SW(7)" name="I3" />
            <blockpin signalname="AN(0)" name="O0" />
            <blockpin signalname="AN(1)" name="O1" />
            <blockpin signalname="AN(2)" name="O2" />
            <blockpin signalname="AN(3)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1696" name="XLXI_1" orien="R0">
        </instance>
        <branch name="BTN(1:0)">
            <wire x2="1216" y1="1648" y2="1648" x1="992" />
            <wire x2="1216" y1="1488" y2="1536" x1="1216" />
            <wire x2="1216" y1="1536" y2="1552" x1="1216" />
            <wire x2="1216" y1="1552" y2="1616" x1="1216" />
            <wire x2="1216" y1="1616" y2="1648" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="992" y="1648" name="BTN(1:0)" orien="R180" />
        <bustap x2="1312" y1="1536" y2="1536" x1="1216" />
        <branch name="BTN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1536" type="branch" />
            <wire x2="1344" y1="1536" y2="1536" x1="1312" />
            <wire x2="1376" y1="1536" y2="1536" x1="1344" />
            <wire x2="1536" y1="1536" y2="1536" x1="1376" />
        </branch>
        <bustap x2="1312" y1="1616" y2="1616" x1="1216" />
        <branch name="BTN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1352" y="1616" type="branch" />
            <wire x2="1352" y1="1616" y2="1616" x1="1312" />
            <wire x2="1392" y1="1616" y2="1616" x1="1352" />
            <wire x2="1536" y1="1616" y2="1616" x1="1392" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="1184" y1="1136" y2="1136" x1="1024" />
            <wire x2="1184" y1="1136" y2="1184" x1="1184" />
            <wire x2="1184" y1="1184" y2="1280" x1="1184" />
            <wire x2="1184" y1="1280" y2="1360" x1="1184" />
            <wire x2="1184" y1="1360" y2="1440" x1="1184" />
            <wire x2="1184" y1="1440" y2="1872" x1="1184" />
            <wire x2="1184" y1="1872" y2="1888" x1="1184" />
            <wire x2="1184" y1="1888" y2="1936" x1="1184" />
            <wire x2="1184" y1="1936" y2="1984" x1="1184" />
            <wire x2="1184" y1="1984" y2="2048" x1="1184" />
            <wire x2="1184" y1="2048" y2="2064" x1="1184" />
            <wire x2="1184" y1="2064" y2="2112" x1="1184" />
            <wire x2="1184" y1="2112" y2="2144" x1="1184" />
            <wire x2="1184" y1="2144" y2="2224" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1136" name="SW(7:0)" orien="R180" />
        <bustap x2="1280" y1="1888" y2="1888" x1="1184" />
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="1888" type="branch" />
            <wire x2="1336" y1="1888" y2="1888" x1="1280" />
            <wire x2="1392" y1="1888" y2="1888" x1="1336" />
            <wire x2="1392" y1="1888" y2="1904" x1="1392" />
            <wire x2="1488" y1="1904" y2="1904" x1="1392" />
        </branch>
        <bustap x2="1280" y1="1984" y2="1984" x1="1184" />
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="1984" type="branch" />
            <wire x2="1336" y1="1984" y2="1984" x1="1280" />
            <wire x2="1392" y1="1984" y2="1984" x1="1336" />
            <wire x2="1488" y1="1968" y2="1968" x1="1392" />
            <wire x2="1392" y1="1968" y2="1984" x1="1392" />
        </branch>
        <bustap x2="1280" y1="2064" y2="2064" x1="1184" />
        <branch name="SW(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="2064" type="branch" />
            <wire x2="1336" y1="2064" y2="2064" x1="1280" />
            <wire x2="1392" y1="2064" y2="2064" x1="1336" />
            <wire x2="1488" y1="2032" y2="2032" x1="1392" />
            <wire x2="1392" y1="2032" y2="2064" x1="1392" />
        </branch>
        <bustap x2="1280" y1="2144" y2="2144" x1="1184" />
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1336" y="2144" type="branch" />
            <wire x2="1336" y1="2144" y2="2144" x1="1280" />
            <wire x2="1392" y1="2144" y2="2144" x1="1336" />
            <wire x2="1488" y1="2096" y2="2096" x1="1392" />
            <wire x2="1392" y1="2096" y2="2144" x1="1392" />
        </branch>
        <bustap x2="1280" y1="1440" y2="1440" x1="1184" />
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1320" y="1440" type="branch" />
            <wire x2="1320" y1="1440" y2="1440" x1="1280" />
            <wire x2="1360" y1="1440" y2="1440" x1="1320" />
            <wire x2="1360" y1="1440" y2="1456" x1="1360" />
            <wire x2="1536" y1="1456" y2="1456" x1="1360" />
        </branch>
        <bustap x2="1280" y1="1360" y2="1360" x1="1184" />
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1360" type="branch" />
            <wire x2="1312" y1="1360" y2="1360" x1="1280" />
            <wire x2="1344" y1="1360" y2="1360" x1="1312" />
            <wire x2="1344" y1="1360" y2="1376" x1="1344" />
            <wire x2="1536" y1="1376" y2="1376" x1="1344" />
        </branch>
        <bustap x2="1280" y1="1280" y2="1280" x1="1184" />
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1280" type="branch" />
            <wire x2="1312" y1="1280" y2="1280" x1="1280" />
            <wire x2="1344" y1="1280" y2="1280" x1="1312" />
            <wire x2="1344" y1="1280" y2="1296" x1="1344" />
            <wire x2="1536" y1="1296" y2="1296" x1="1344" />
        </branch>
        <bustap x2="1280" y1="1184" y2="1184" x1="1184" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1184" type="branch" />
            <wire x2="1312" y1="1184" y2="1184" x1="1280" />
            <wire x2="1344" y1="1184" y2="1184" x1="1312" />
            <wire x2="1344" y1="1184" y2="1216" x1="1344" />
            <wire x2="1536" y1="1216" y2="1216" x1="1344" />
        </branch>
        <instance x="1488" y="2128" name="XLXI_2" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2144" y1="1824" y2="1904" x1="2144" />
            <wire x2="2144" y1="1904" y2="1968" x1="2144" />
            <wire x2="2144" y1="1968" y2="2032" x1="2144" />
            <wire x2="2144" y1="2032" y2="2096" x1="2144" />
            <wire x2="2144" y1="2096" y2="2160" x1="2144" />
            <wire x2="2256" y1="2160" y2="2160" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2256" y="2160" name="AN(3:0)" orien="R0" />
        <bustap x2="2048" y1="1904" y2="1904" x1="2144" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1904" type="branch" />
            <wire x2="1920" y1="1904" y2="1904" x1="1712" />
            <wire x2="1984" y1="1904" y2="1904" x1="1920" />
            <wire x2="2048" y1="1904" y2="1904" x1="1984" />
        </branch>
        <bustap x2="2048" y1="1968" y2="1968" x1="2144" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1968" type="branch" />
            <wire x2="1920" y1="1968" y2="1968" x1="1712" />
            <wire x2="1984" y1="1968" y2="1968" x1="1920" />
            <wire x2="2048" y1="1968" y2="1968" x1="1984" />
        </branch>
        <bustap x2="2048" y1="2032" y2="2032" x1="2144" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2032" type="branch" />
            <wire x2="1920" y1="2032" y2="2032" x1="1712" />
            <wire x2="1984" y1="2032" y2="2032" x1="1920" />
            <wire x2="2048" y1="2032" y2="2032" x1="1984" />
        </branch>
        <bustap x2="2048" y1="2096" y2="2096" x1="2144" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2096" type="branch" />
            <wire x2="1920" y1="2096" y2="2096" x1="1712" />
            <wire x2="1984" y1="2096" y2="2096" x1="1920" />
            <wire x2="2048" y1="2096" y2="2096" x1="1984" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2400" y1="1136" y2="1216" x1="2400" />
            <wire x2="2400" y1="1216" y2="1280" x1="2400" />
            <wire x2="2400" y1="1280" y2="1344" x1="2400" />
            <wire x2="2400" y1="1344" y2="1408" x1="2400" />
            <wire x2="2400" y1="1408" y2="1472" x1="2400" />
            <wire x2="2400" y1="1472" y2="1536" x1="2400" />
            <wire x2="2400" y1="1536" y2="1600" x1="2400" />
            <wire x2="2400" y1="1600" y2="1664" x1="2400" />
            <wire x2="2400" y1="1664" y2="1696" x1="2400" />
            <wire x2="2528" y1="1696" y2="1696" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1696" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2304" y1="1216" y2="1216" x1="2400" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1216" type="branch" />
            <wire x2="2208" y1="1216" y2="1216" x1="1920" />
            <wire x2="2256" y1="1216" y2="1216" x1="2208" />
            <wire x2="2304" y1="1216" y2="1216" x1="2256" />
        </branch>
        <bustap x2="2304" y1="1664" y2="1664" x1="2400" />
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="1664" type="branch" />
            <wire x2="2160" y1="1664" y2="1664" x1="1920" />
            <wire x2="2232" y1="1664" y2="1664" x1="2160" />
            <wire x2="2304" y1="1664" y2="1664" x1="2232" />
        </branch>
        <bustap x2="2304" y1="1600" y2="1600" x1="2400" />
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="1600" type="branch" />
            <wire x2="2160" y1="1600" y2="1600" x1="1920" />
            <wire x2="2232" y1="1600" y2="1600" x1="2160" />
            <wire x2="2304" y1="1600" y2="1600" x1="2232" />
        </branch>
        <bustap x2="2304" y1="1536" y2="1536" x1="2400" />
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="1536" type="branch" />
            <wire x2="2160" y1="1536" y2="1536" x1="1920" />
            <wire x2="2232" y1="1536" y2="1536" x1="2160" />
            <wire x2="2304" y1="1536" y2="1536" x1="2232" />
        </branch>
        <bustap x2="2304" y1="1472" y2="1472" x1="2400" />
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="1472" type="branch" />
            <wire x2="2160" y1="1472" y2="1472" x1="1920" />
            <wire x2="2232" y1="1472" y2="1472" x1="2160" />
            <wire x2="2304" y1="1472" y2="1472" x1="2232" />
        </branch>
        <bustap x2="2304" y1="1408" y2="1408" x1="2400" />
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="1408" type="branch" />
            <wire x2="2160" y1="1408" y2="1408" x1="1920" />
            <wire x2="2232" y1="1408" y2="1408" x1="2160" />
            <wire x2="2304" y1="1408" y2="1408" x1="2232" />
        </branch>
        <bustap x2="2304" y1="1344" y2="1344" x1="2400" />
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1344" type="branch" />
            <wire x2="2144" y1="1344" y2="1344" x1="1920" />
            <wire x2="2224" y1="1344" y2="1344" x1="2144" />
            <wire x2="2304" y1="1344" y2="1344" x1="2224" />
        </branch>
        <bustap x2="2304" y1="1280" y2="1280" x1="2400" />
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1280" type="branch" />
            <wire x2="2144" y1="1280" y2="1280" x1="1920" />
            <wire x2="2224" y1="1280" y2="1280" x1="2144" />
            <wire x2="2304" y1="1280" y2="1280" x1="2224" />
        </branch>
    </sheet>
</drawing>