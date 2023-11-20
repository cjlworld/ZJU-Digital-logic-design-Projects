<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="Sbar" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="C" />
        <signal name="XLXN_14" />
        <signal name="Rbar" />
        <signal name="D" />
        <signal name="XLXN_19" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="Sbar" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="Rbar" />
        <port polarity="Input" name="D" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand3" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Sbar" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_2">
            <blockpin signalname="Rbar" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="Rbar" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="Sbar" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="Rbar" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1696" name="XLXI_1" orien="R0" />
        <instance x="1408" y="1968" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="1408" y1="1728" y2="1776" x1="1408" />
            <wire x2="1712" y1="1728" y2="1728" x1="1408" />
            <wire x2="1712" y1="1568" y2="1568" x1="1664" />
            <wire x2="1872" y1="1568" y2="1568" x1="1712" />
            <wire x2="1712" y1="1568" y2="1728" x1="1712" />
        </branch>
        <branch name="Qbar">
            <wire x2="1408" y1="1632" y2="1696" x1="1408" />
            <wire x2="1680" y1="1696" y2="1696" x1="1408" />
            <wire x2="1680" y1="1696" y2="1840" x1="1680" />
            <wire x2="1872" y1="1840" y2="1840" x1="1680" />
            <wire x2="1680" y1="1840" y2="1840" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1568" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1872" y="1840" name="Qbar" orien="R0" />
        <instance x="912" y="1696" name="XLXI_4" orien="R0" />
        <instance x="912" y="2192" name="XLXI_6" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1248" y1="1456" y2="1456" x1="912" />
            <wire x2="912" y1="1456" y2="1504" x1="912" />
            <wire x2="1248" y1="1296" y2="1296" x1="1168" />
            <wire x2="1248" y1="1296" y2="1456" x1="1248" />
        </branch>
        <instance x="912" y="1424" name="XLXI_5" orien="R0" />
        <branch name="Sbar">
            <wire x2="912" y1="1152" y2="1232" x1="912" />
            <wire x2="1408" y1="1152" y2="1152" x1="912" />
            <wire x2="1408" y1="1152" y2="1504" x1="1408" />
            <wire x2="1504" y1="1152" y2="1152" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1152" name="Sbar" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="912" y1="1920" y2="2000" x1="912" />
            <wire x2="1184" y1="1920" y2="1920" x1="912" />
            <wire x2="1184" y1="1840" y2="1840" x1="1168" />
            <wire x2="1408" y1="1840" y2="1840" x1="1184" />
            <wire x2="1184" y1="1840" y2="1920" x1="1184" />
        </branch>
        <branch name="C">
            <wire x2="912" y1="1568" y2="1568" x1="896" />
            <wire x2="896" y1="1568" y2="1712" x1="896" />
            <wire x2="976" y1="1712" y2="1712" x1="896" />
            <wire x2="896" y1="1712" y2="1840" x1="896" />
            <wire x2="912" y1="1840" y2="1840" x1="896" />
        </branch>
        <iomarker fontsize="28" x="976" y="1712" name="C" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="848" y1="1168" y2="1296" x1="848" />
            <wire x2="912" y1="1296" y2="1296" x1="848" />
            <wire x2="1312" y1="1168" y2="1168" x1="848" />
            <wire x2="1312" y1="1168" y2="2064" x1="1312" />
            <wire x2="848" y1="1904" y2="1984" x1="848" />
            <wire x2="1232" y1="1984" y2="1984" x1="848" />
            <wire x2="1232" y1="1984" y2="2064" x1="1232" />
            <wire x2="1312" y1="2064" y2="2064" x1="1232" />
            <wire x2="912" y1="1904" y2="1904" x1="848" />
            <wire x2="1232" y1="2064" y2="2064" x1="1168" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="912" y1="1360" y2="1440" x1="912" />
            <wire x2="1184" y1="1440" y2="1440" x1="912" />
            <wire x2="1184" y1="1440" y2="1568" x1="1184" />
            <wire x2="1408" y1="1568" y2="1568" x1="1184" />
            <wire x2="1184" y1="1568" y2="1664" x1="1184" />
            <wire x2="1088" y1="1760" y2="1760" x1="912" />
            <wire x2="912" y1="1760" y2="1776" x1="912" />
            <wire x2="1184" y1="1664" y2="1664" x1="1088" />
            <wire x2="1088" y1="1664" y2="1760" x1="1088" />
            <wire x2="1184" y1="1568" y2="1568" x1="1168" />
        </branch>
        <instance x="912" y="1968" name="XLXI_3" orien="R0" />
        <branch name="Rbar">
            <wire x2="912" y1="1632" y2="1632" x1="816" />
            <wire x2="816" y1="1632" y2="2128" x1="816" />
            <wire x2="816" y1="2128" y2="2224" x1="816" />
            <wire x2="896" y1="2224" y2="2224" x1="816" />
            <wire x2="1408" y1="2224" y2="2224" x1="896" />
            <wire x2="1584" y1="2224" y2="2224" x1="1408" />
            <wire x2="912" y1="2128" y2="2128" x1="816" />
            <wire x2="1408" y1="1904" y2="2224" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2224" name="Rbar" orien="R0" />
        <branch name="D">
            <wire x2="896" y1="2064" y2="2064" x1="880" />
            <wire x2="912" y1="2064" y2="2064" x1="896" />
        </branch>
        <iomarker fontsize="28" x="880" y="2064" name="D" orien="R180" />
    </sheet>
</drawing>