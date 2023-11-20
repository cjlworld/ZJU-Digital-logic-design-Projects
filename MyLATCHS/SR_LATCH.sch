<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="R" />
        <signal name="S" />
        <signal name="XLXN_4" />
        <signal name="Q" />
        <signal name="XLXN_7" />
        <signal name="Qbar" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="S" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="nor2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_2">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1760" name="XLXI_1" orien="R0" />
        <instance x="928" y="1968" name="XLXI_2" orien="R0" />
        <branch name="R">
            <wire x2="928" y1="1632" y2="1632" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1632" name="R" orien="R180" />
        <branch name="S">
            <wire x2="928" y1="1904" y2="1904" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1904" name="S" orien="R180" />
        <branch name="Q">
            <wire x2="912" y1="1760" y2="1840" x1="912" />
            <wire x2="928" y1="1840" y2="1840" x1="912" />
            <wire x2="1200" y1="1760" y2="1760" x1="912" />
            <wire x2="1200" y1="1664" y2="1664" x1="1184" />
            <wire x2="1296" y1="1664" y2="1664" x1="1200" />
            <wire x2="1200" y1="1664" y2="1760" x1="1200" />
        </branch>
        <branch name="Qbar">
            <wire x2="928" y1="1696" y2="1696" x1="880" />
            <wire x2="880" y1="1696" y2="1776" x1="880" />
            <wire x2="1200" y1="1776" y2="1776" x1="880" />
            <wire x2="1200" y1="1776" y2="1872" x1="1200" />
            <wire x2="1296" y1="1872" y2="1872" x1="1200" />
            <wire x2="1200" y1="1872" y2="1872" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1664" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1296" y="1872" name="Qbar" orien="R0" />
    </sheet>
</drawing>