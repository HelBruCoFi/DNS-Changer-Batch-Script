@echo off

echo Hi!
echo I am a Batch Script, made by HelBruCoFi, very useful, I can change the DNS of your network cards!!!
echo.
echo I can only work with Ethernet and Wi-Fi cards. These must be named this way, if not you can rename them in Control Panel
echo or just edit my source code with your real network card names.
echo.
echo DON'T forget to RUN ME AS ADMINISTRATOR, in that case I have no rights to live. If you did forget about that, please
echo kill me and give me life again with truly rights... I accept the pain, I just wanna be useful to you.
echo.

:Ask
echo Would you like to change your DNS to Google's or DHCP?
echo For DHCP option type and enter "1"
echo For Google DNS type and enter "2"

set INPUT=
set /P INPUT=Choose option: %=%
If %INPUT%==1 goto DHCP
If %INPUT%==2 goto google
echo.
echo You are now a offical noob that can't write 1 or 2        :^)
echo.
echo.
goto Ask

:DHCP

netsh interface ipv4 set dnsservers name="Ethernet" source=dhcp
netsh interface ipv6 set dnsservers name="Ethernet" source=dhcp

netsh interface ipv4 set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv6 set dnsservers name="Wi-Fi" source=dhcp

echo Your DNS is now default (DHCP).
echo.

goto end


:google

netsh interface ipv4 add dnsservers "Ethernet" 8.8.8.8
netsh interface ipv4 add dnsservers "Ethernet" 8.8.4.4

netsh interface ipv6 add dnsservers "Ethernet" 2001:4860:4860::8888 >nul
netsh interface ipv6 add dnsservers "Ethernet" 2001:4860:4860::8844 >nul

netsh interface ipv4 add dnsservers "Wi-Fi" 8.8.8.8
netsh interface ipv4 add dnsservers "Wi-Fi" 8.8.4.4

netsh interface ipv6 add dnsservers "Wi-Fi" 2001:4860:4860::8888 >nul
netsh interface ipv6 add dnsservers "Wi-Fi" 2001:4860:4860::8844 >nul

echo Your DNS is now Google DNS.
echo.

:end
echo.
echo.
echo Very nice, it's done.
echo I'm glad I could help you. :)

echo.
pause
