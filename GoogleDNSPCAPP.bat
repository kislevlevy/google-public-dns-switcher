@echo off
echo ** Welcome to the DNS Fixer app - by KS (Run as admin only!) **
echo.
echo.
echo.
netsh interface show interface
set /p question1="Which adapter would you like to change? Ethernet (e), Wi-Fi (w), else (d): "
echo.

if "%question1%"=="e" (
set /p question2="Would you like to Activate (a) or Deactivate (d)"

if "%question2%"=="a" (
netsh interface ipv4 set dns "Ethernet" static 8.8.8.8
netsh interface ipv4 add dns "Ethernet" 8.8.4.4 index=2
ipconfig /flushdns
echo.
echo Ethernet adapter is set, the program will shut it self OFF.
echo.
timeout 5
exit
)

if "%question2%"=="d" (
netsh interface ipv4 set dns "Ethernet" dhcp
ipconfig /flushdns
echo.
echo Ethernet adapter is clear, the program will shut it self OFF.
echo.
timeout 5
exit
) eles (
timeout 5
exit
)
)

if "%question1%"=="w" (
set /p question3="Would you like to Activate (a) or Deactivate (d)"

if "%question3%"=="a" (
netsh interface ipv4 set dns "Wi-Fi" static 8.8.8.8
netsh interface ipv4 add dns "Wi-Fi" 8.8.4.4 index=2
ipconfig /flushdns
echo.
echo Wi-Fi adapter is set, the program will shut it self OFF.
echo.
timeout 5
exit
)

if "%question3%"=="d" (
netsh interface ipv4 set dns "Wi-Fi" dhcp
ipconfig /flushdns
echo.
echo Wi-Fi adapter is clear, the program will shut it self OFF.
echo.
timeout 5
exit
) eles (
timeout 5
exit
)
)

if "%question1%"=="d" (
echo.
netsh interface show interface
echo.
set /p question4="Would you like to Activate (a) or Deactivate (d)"
set /p question5="Type in the name of the adapter you would like to change: "

if "%question4%"=="a" (
netsh interface ipv4 set dns "%question5%" static 8.8.8.8
netsh interface ipv4 add dns "%question5%" 8.8.4.4 index=2
ipconfig /flushdns
echo.
echo %question5% adapter is set, the program will shut it self OFF.
echo.
timeout 5
exit
)

if "%question4%"=="d" (
netsh interface ipv4 set dns "%question5%" dhcp
ipconfig /flushdns
echo.
echo %question5% adapter is clear, the program will shut it self OFF.
echo.
timeout 5
exit
) eles (
timeout 5
exit
)
) else (
timeout 5
exit
)
