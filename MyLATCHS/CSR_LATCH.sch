<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="S" />
        <signal name="R" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="Q" />
        <signal name="Qbar" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1280" name="XLXI_1" orien="R0" />
        <instance x="1024" y="1568" name="XLXI_2" orien="R0" />
        <instance x="1504" y="1280" name="XLXI_3" orien="R0" />
        <instance x="1504" y="1568" name="XLXI_4" orien="R0" />
        <branch name="C">
            <wire x2="1008" y1="1328" y2="1328" x1="960" />
            <wire x2="1008" y1="1328" y2="1440" x1="1008" />
            <wire x2="1024" y1="1440" y2="1440" x1="1008" />
            <wire x2="1024" y1="1216" y2="1216" x1="1008" />
            <wire x2="1008" y1="1216" y2="1328" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="960" y="1328" name="C" orien="R180" />
        <branch name="S">
            <wire x2="1024" y1="1152" y2="1152" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1152" name="S" orien="R180" />
        <branch name="R">
            <wire x2="1024" y1="1504" y2="1504" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1504" name="R" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1392" y1="1472" y2="1472" x1="1280" />
            <wire x2="1392" y1="1472" y2="1504" x1="1392" />
            <wire x2="1504" y1="1504" y2="1504" x1="1392" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1392" y1="1184" y2="1184" x1="1280" />
            <wire x2="1392" y1="1152" y2="1184" x1="1392" />
            <wire x2="1504" y1="1152" y2="1152" x1="1392" />
        </branch>
        <branch name="Q">
            <wire x2="1792" y1="1376" y2="1376" x1="1440" />
            <wire x2="1440" y1="1376" y2="1440" x1="1440" />
            <wire x2="1504" y1="1440" y2="1440" x1="1440" />
            <wire x2="1792" y1="1184" y2="1184" x1="1760" />
            <wire x2="1936" y1="1184" y2="1184" x1="1792" />
            <wire x2="1792" y1="1184" y2="1376" x1="1792" />
        </branch>
        <branch name="Qbar">
            <wire x2="1504" y1="1216" y2="1216" x1="1440" />
            <wire x2="1440" y1="1216" y2="1328" x1="1440" />
            <wire x2="1776" y1="1328" y2="1328" x1="1440" />
            <wire x2="1776" y1="1328" y2="1472" x1="1776" />
            <wire x2="1936" y1="1472" y2="1472" x1="1776" />
            <wire x2="1776" y1="1472" y2="1472" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1184" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1472" name="Qbar" orien="R0" />
    </sheet>
</drawing>