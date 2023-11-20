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
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_14" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1632" name="XLXI_1" orien="R0" />
        <instance x="1280" y="1888" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="1648" y1="1680" y2="1680" x1="1280" />
            <wire x2="1280" y1="1680" y2="1760" x1="1280" />
            <wire x2="1648" y1="1536" y2="1536" x1="1536" />
            <wire x2="1648" y1="1536" y2="1680" x1="1648" />
            <wire x2="1824" y1="1536" y2="1536" x1="1648" />
        </branch>
        <branch name="Qbar">
            <wire x2="1280" y1="1568" y2="1648" x1="1280" />
            <wire x2="1680" y1="1648" y2="1648" x1="1280" />
            <wire x2="1680" y1="1648" y2="1792" x1="1680" />
            <wire x2="1824" y1="1792" y2="1792" x1="1680" />
            <wire x2="1680" y1="1792" y2="1792" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1536" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1792" name="Qbar" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1280" y1="1504" y2="1504" x1="1232" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1280" y1="1824" y2="1824" x1="1232" />
        </branch>
        <instance x="976" y="1600" name="XLXI_3" orien="R0" />
        <instance x="976" y="1920" name="XLXI_4" orien="R0" />
        <branch name="C">
            <wire x2="976" y1="1536" y2="1536" x1="960" />
            <wire x2="960" y1="1536" y2="1664" x1="960" />
            <wire x2="960" y1="1664" y2="1792" x1="960" />
            <wire x2="976" y1="1792" y2="1792" x1="960" />
            <wire x2="1040" y1="1664" y2="1664" x1="960" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1664" name="C" orien="R0" />
        <branch name="D">
            <wire x2="720" y1="1472" y2="1472" x1="704" />
            <wire x2="848" y1="1472" y2="1472" x1="720" />
            <wire x2="976" y1="1472" y2="1472" x1="848" />
            <wire x2="704" y1="1472" y2="1664" x1="704" />
            <wire x2="704" y1="1664" y2="1856" x1="704" />
            <wire x2="720" y1="1856" y2="1856" x1="704" />
            <wire x2="736" y1="1664" y2="1664" x1="704" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="976" y1="1856" y2="1856" x1="944" />
        </branch>
        <instance x="720" y="1888" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="736" y="1664" name="D" orien="R0" />
    </sheet>
</drawing>