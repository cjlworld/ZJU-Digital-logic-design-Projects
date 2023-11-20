<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="S" />
        <signal name="R" />
        <signal name="Q" />
        <signal name="Qbar" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <blockdef name="CSR_LATCH">
            <timestamp>2023-11-20T8:52:53</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="CSR_LATCH" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="XLXN_3" name="Q" />
            <blockpin signalname="XLXN_4" name="Qbar" />
        </block>
        <block symbolname="CSR_LATCH" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="XLXN_3" name="S" />
            <blockpin signalname="XLXN_4" name="R" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qbar" name="Qbar" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <branch name="C">
            <wire x2="1248" y1="928" y2="928" x1="1168" />
            <wire x2="1280" y1="928" y2="928" x1="1248" />
            <wire x2="1248" y1="928" y2="1136" x1="1248" />
            <wire x2="1312" y1="1136" y2="1136" x1="1248" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1728" y1="928" y2="928" x1="1504" />
            <wire x2="1728" y1="928" y2="1136" x1="1728" />
            <wire x2="1808" y1="1136" y2="1136" x1="1728" />
        </branch>
        <instance x="1280" y="960" name="XLXI_3" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1808" y1="1264" y2="1264" x1="1696" />
        </branch>
        <instance x="1808" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1712" y1="1136" y2="1136" x1="1696" />
            <wire x2="1712" y1="1136" y2="1200" x1="1712" />
            <wire x2="1808" y1="1200" y2="1200" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1168" y="928" name="C" orien="R180" />
        <branch name="S">
            <wire x2="1312" y1="1200" y2="1200" x1="1296" />
        </branch>
        <branch name="R">
            <wire x2="1312" y1="1264" y2="1264" x1="1296" />
        </branch>
        <branch name="Q">
            <wire x2="2224" y1="1136" y2="1136" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1136" name="Q" orien="R0" />
        <branch name="Qbar">
            <wire x2="2224" y1="1264" y2="1264" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1264" name="Qbar" orien="R0" />
        <iomarker fontsize="28" x="1296" y="1200" name="S" orien="R180" />
        <iomarker fontsize="28" x="1296" y="1264" name="R" orien="R180" />
    </sheet>
</drawing>