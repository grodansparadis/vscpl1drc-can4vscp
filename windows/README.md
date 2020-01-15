# CAN4VSCP

This is a CANAL driver for the CAN4VSCP CAN Controller for windows

## Config

```xml
<?xml version = "1.0" encoding = "UTF-8" ?>
<config>
    <description>CAN4VSCP standard serial driver.</description>
    <level>1</level>
    <blocking>yes</blocking>
    <info>http://http://www.grodansparadis.com/frankfurt/rs232/manual/doku.php?id=the_can4vscp_mode</info>
    <items>
        <item pos="0" type="string" description="Serial port (com1, com2...)" info="" />
        <item pos="1" type="choice" optional="true" description="Baudrate code" info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#parameter_string">
            <choice value="0" description = "0 - 115200 (Default value)" />
            <choice value="1" description = "1 - 128000" />
            <choice value="3" description = "2 - 230400" />
            <choice value="4" description = "3 - 256000" />
            <choice value="5" description = "4 - 460800" />
            <choice value="6" description = "5 - 500000" />
            <choice value="7" description = "6 - 625000" />
            <choice value="8" description = "7 - 921600" />
            <choice value="9" description = "8 - 1000000" />
            <choice value="0" description = "9 - 9600" />
            <choice value="10" description = "10 - 19200" />
            <choice value="11" description = "11 - 38400" />
            <choice value="12" description = "12 - 57600" />
        </item>
    </items>
	
    <flags>
        <bit pos="0" width="2" type="choice" description="" info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" >
            <choice value="0" description="Open CAN4VSCP interface in normal mode." />
            <choice value="1" description="Open CAN4VSCP interface in listen mode." />
            <choice value="2" description="Open CAN4VSCP interface in normal mode." />
            <choice value="3" description="Open CAN4VSCP interface in normal mode." />
        </bit>
        <bit pos="2" width="1" type="bool" description="If set the driver will not switch to VSCP mode. That is it must be in VSCP mode. Open will be faster." info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" />
        <bit pos="3" width="1" type="bool" description="If set the driver will wait for an ACK from the physical device for every sent frame. This will slow down sending but make transmission it very secure." info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" />
        <bit pos="4" width="1" type="bool" description="If set enable timestamp. The timestamp will be written by the hardware instead of the driver." info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" />
        <bit pos="5" width="1" type="bool" description="If set enable hardware handshake." info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" />
        <bit pos="6" width="1" type="bool" description="If set enable soft Open." info="http://www.vscp.org/docs/vscpd/doku.php?id=level1_driver_can4vscp#flags" />
    </flags>
</config>
```