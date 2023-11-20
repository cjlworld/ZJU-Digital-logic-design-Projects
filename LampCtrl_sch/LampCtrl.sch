<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="S2" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="S3" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="F" />
        <signal name="XLXN_25" />
        <signal name="LED(6:0)" />
        <signal name="LED(6)" />
        <signal name="LED(5)" />
        <signal name="LED(4)" />
        <signal name="LED(3)" />
        <signal name="LED(2)" />
        <signal name="LED(1)" />
        <signal name="LED(0)" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="LED(6:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="S2" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_9">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="LED(6)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_30">
            <blockpin signalname="LED(5)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_31">
            <blockpin signalname="LED(4)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_32">
            <blockpin signalname="LED(3)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="LED(2)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_34">
            <blockpin signalname="LED(1)" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_36">
            <blockpin signalname="LED(0)" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S1">
            <wire x2="688" y1="768" y2="768" x1="544" />
            <wire x2="864" y1="768" y2="768" x1="688" />
            <wire x2="688" y1="608" y2="768" x1="688" />
            <wire x2="752" y1="608" y2="608" x1="688" />
            <wire x2="752" y1="608" y2="1264" x1="752" />
            <wire x2="1728" y1="1264" y2="1264" x1="752" />
            <wire x2="1744" y1="608" y2="608" x1="752" />
        </branch>
        <iomarker fontsize="28" x="544" y="768" name="S1" orien="R180" />
        <instance x="864" y="800" name="XLXI_2" orien="R0" />
        <instance x="848" y="1168" name="XLXI_3" orien="R0" />
        <branch name="S2">
            <wire x2="704" y1="1136" y2="1136" x1="560" />
            <wire x2="848" y1="1136" y2="1136" x1="704" />
            <wire x2="704" y1="992" y2="1136" x1="704" />
            <wire x2="1408" y1="992" y2="992" x1="704" />
            <wire x2="1408" y1="992" y2="1600" x1="1408" />
            <wire x2="1728" y1="1600" y2="1600" x1="1408" />
            <wire x2="1408" y1="672" y2="992" x1="1408" />
            <wire x2="1744" y1="672" y2="672" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="560" y="1136" name="S2" orien="R180" />
        <instance x="848" y="1584" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="560" y="1552" name="S3" orien="R180" />
        <instance x="1744" y="800" name="XLXI_5" orien="R0" />
        <instance x="1728" y="1120" name="XLXI_6" orien="R0" />
        <instance x="1728" y="1456" name="XLXI_7" orien="R0" />
        <instance x="1728" y="1792" name="XLXI_8" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1328" y1="768" y2="768" x1="1088" />
            <wire x2="1728" y1="768" y2="768" x1="1328" />
            <wire x2="1728" y1="768" y2="928" x1="1728" />
            <wire x2="1328" y1="768" y2="1664" x1="1328" />
            <wire x2="1728" y1="1664" y2="1664" x1="1328" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1440" y1="1136" y2="1136" x1="1072" />
            <wire x2="1440" y1="1136" y2="1328" x1="1440" />
            <wire x2="1728" y1="1328" y2="1328" x1="1440" />
            <wire x2="1440" y1="992" y2="1136" x1="1440" />
            <wire x2="1728" y1="992" y2="992" x1="1440" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1712" y1="1552" y2="1552" x1="1072" />
            <wire x2="1728" y1="1552" y2="1552" x1="1712" />
            <wire x2="1712" y1="1552" y2="1728" x1="1712" />
            <wire x2="1728" y1="1728" y2="1728" x1="1712" />
            <wire x2="1728" y1="1392" y2="1552" x1="1728" />
        </branch>
        <branch name="S3">
            <wire x2="832" y1="1552" y2="1552" x1="560" />
            <wire x2="848" y1="1552" y2="1552" x1="832" />
            <wire x2="832" y1="1552" y2="1648" x1="832" />
            <wire x2="1136" y1="1648" y2="1648" x1="832" />
            <wire x2="1728" y1="1056" y2="1056" x1="832" />
            <wire x2="832" y1="1056" y2="1552" x1="832" />
            <wire x2="1136" y1="736" y2="1648" x1="1136" />
            <wire x2="1744" y1="736" y2="736" x1="1136" />
        </branch>
        <instance x="2416" y="1328" name="XLXI_9" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2416" y1="672" y2="672" x1="2000" />
            <wire x2="2416" y1="672" y2="1072" x1="2416" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2192" y1="992" y2="992" x1="1984" />
            <wire x2="2192" y1="992" y2="1136" x1="2192" />
            <wire x2="2416" y1="1136" y2="1136" x1="2192" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2192" y1="1328" y2="1328" x1="1984" />
            <wire x2="2192" y1="1200" y2="1328" x1="2192" />
            <wire x2="2416" y1="1200" y2="1200" x1="2192" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2416" y1="1664" y2="1664" x1="1984" />
            <wire x2="2416" y1="1264" y2="1664" x1="2416" />
        </branch>
        <branch name="F">
            <wire x2="2704" y1="1168" y2="1168" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1168" name="F" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="496" y1="2192" y2="2192" x1="384" />
            <wire x2="624" y1="2192" y2="2192" x1="496" />
            <wire x2="672" y1="2192" y2="2192" x1="624" />
            <wire x2="720" y1="2192" y2="2192" x1="672" />
            <wire x2="752" y1="2192" y2="2192" x1="720" />
            <wire x2="848" y1="2192" y2="2192" x1="752" />
            <wire x2="880" y1="2192" y2="2192" x1="848" />
            <wire x2="976" y1="2192" y2="2192" x1="880" />
            <wire x2="1040" y1="2192" y2="2192" x1="976" />
            <wire x2="1088" y1="2192" y2="2192" x1="1040" />
            <wire x2="1200" y1="2192" y2="2192" x1="1088" />
            <wire x2="1296" y1="2192" y2="2192" x1="1200" />
            <wire x2="1344" y1="2192" y2="2192" x1="1296" />
            <wire x2="1488" y1="2192" y2="2192" x1="1344" />
            <wire x2="1504" y1="2192" y2="2192" x1="1488" />
            <wire x2="1616" y1="2192" y2="2192" x1="1504" />
            <wire x2="1712" y1="2192" y2="2192" x1="1616" />
            <wire x2="1888" y1="2192" y2="2192" x1="1712" />
            <wire x2="2016" y1="2192" y2="2192" x1="1888" />
            <wire x2="2288" y1="2192" y2="2192" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2288" y="2192" name="LED(6:0)" orien="R0" />
        <bustap x2="672" y1="2192" y2="2096" x1="672" />
        <branch name="LED(6)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2072" type="branch" />
            <wire x2="672" y1="2048" y2="2064" x1="672" />
            <wire x2="672" y1="2064" y2="2072" x1="672" />
            <wire x2="672" y1="2072" y2="2096" x1="672" />
        </branch>
        <bustap x2="880" y1="2192" y2="2096" x1="880" />
        <branch name="LED(5)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2056" type="branch" />
            <wire x2="880" y1="2016" y2="2032" x1="880" />
            <wire x2="880" y1="2032" y2="2056" x1="880" />
            <wire x2="880" y1="2056" y2="2096" x1="880" />
        </branch>
        <bustap x2="1040" y1="2192" y2="2096" x1="1040" />
        <branch name="LED(4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2072" type="branch" />
            <wire x2="1040" y1="2048" y2="2072" x1="1040" />
            <wire x2="1040" y1="2072" y2="2096" x1="1040" />
        </branch>
        <bustap x2="1296" y1="2192" y2="2096" x1="1296" />
        <branch name="LED(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="2072" type="branch" />
            <wire x2="1296" y1="2048" y2="2072" x1="1296" />
            <wire x2="1296" y1="2072" y2="2096" x1="1296" />
        </branch>
        <bustap x2="1488" y1="2192" y2="2096" x1="1488" />
        <branch name="LED(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2080" type="branch" />
            <wire x2="1488" y1="2064" y2="2080" x1="1488" />
            <wire x2="1488" y1="2080" y2="2096" x1="1488" />
        </branch>
        <bustap x2="1712" y1="2192" y2="2096" x1="1712" />
        <branch name="LED(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2080" type="branch" />
            <wire x2="1712" y1="2064" y2="2080" x1="1712" />
            <wire x2="1712" y1="2080" y2="2096" x1="1712" />
        </branch>
        <instance x="608" y="2048" name="XLXI_28" orien="R0" />
        <instance x="816" y="2016" name="XLXI_30" orien="R0" />
        <instance x="976" y="2048" name="XLXI_31" orien="R0" />
        <instance x="1232" y="2048" name="XLXI_32" orien="R0" />
        <instance x="1424" y="2064" name="XLXI_33" orien="R0" />
        <instance x="1648" y="2064" name="XLXI_34" orien="R0" />
        <bustap x2="2016" y1="2192" y2="2096" x1="2016" />
        <branch name="LED(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="2080" type="branch" />
            <wire x2="2016" y1="2064" y2="2080" x1="2016" />
            <wire x2="2016" y1="2080" y2="2096" x1="2016" />
        </branch>
        <instance x="1952" y="2064" name="XLXI_36" orien="R0" />
    </sheet>
</drawing>