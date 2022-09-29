@echo off
echo ** Welcome to the Google DNS PC app - by KS (Run as admin only!) **
echo.
echo.
echo.
netsh interface show interface
set /p question1="Which adapter would you like to change? - Write its full name:   "
echo.
set /p question2="Would you like to Activate (a) or Deactivate (d)"


if "%question2%"=="a" (
netsh interface ipv4 set dns "%question1%" static 8.8.8.8
netsh interface ipv4 add dns "%question1%" 8.8.4.4 index=2
ipconfig /flushdns
echo.
echo The %question1% adapter is set, the program will shut it self OFF.
echo.
timeout 5
exit
)

if "%question2%"=="d" (
netsh interface ipv4 set dns "Ethernet" dhcp
ipconfig /flushdns
echo.
echo The %question1% adapter is clear, the program will shut it self OFF.
echo.
timeout 5
exit
)

eles (
timeout 5
exit
)
