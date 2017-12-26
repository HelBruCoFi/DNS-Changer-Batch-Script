@echo off

echo MAMAS
echo.

:Ask
echo Would you like to change your DNS to Google's or DHCP?
echo For DHCP option write "1"
echo For Google DNS write "2"

set INPUT=
set /P INPUT=Choose option: %=%
If %INPUT%==1 goto DHCP
If %INPUT%==2 goto google
echo.
echo You are now a offical retard that can't write 1 or 2
echo.
echo.
goto Ask

:DHCP

rem netsh interface ipv4 show interfaces
rem netsh interface ipv6 show interfaces

netsh interface ipv4 set dnsservers name="Ethernet" source=dhcp
netsh interface ipv6 set dnsservers name="Ethernet" source=dhcp

netsh interface ipv4 set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv6 set dnsservers name="Wi-Fi" source=dhcp

echo Your DNS is now default (DHCP).
echo.

goto end

:google

rem netsh interface ipv4 show interfaces
rem netsh interface ipv6 show interfaces

netsh interface ipv4 add dnsservers "Ethernet" 8.8.8.8
netsh interface ipv4 add dnsservers "Ethernet" 8.8.4.4

rem >nul sends the command output to nul, so it doesn't print
netsh interface ipv6 add dnsservers "Ethernet" 2001:4860:4860::8888 >nul
netsh interface ipv6 add dnsservers "Ethernet" 2001:4860:4860::8844 >nul
rem "index=2" maybe to insert it on second box


netsh interface ipv4 add dnsservers "Wi-Fi" 8.8.8.8
netsh interface ipv4 add dnsservers "Wi-Fi" 8.8.4.4

netsh interface ipv6 add dnsservers "Wi-Fi" 2001:4860:4860::8888 >nul
netsh interface ipv6 add dnsservers "Wi-Fi" 2001:4860:4860::8844 >nul
rem "index=2" maybe to insert it on second box

echo Your DNS is now Google DNS.
echo.

:end
echo.
echo.
echo Very nice, it's done.
echo Here is a par of boobs:
echo ( . Y . )

echo.
pause