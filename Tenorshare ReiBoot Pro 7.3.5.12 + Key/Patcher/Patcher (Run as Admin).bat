@echo off
set RULENAME="ReiBoot iOS System Repair 32-bit {B4tman}"
Set ProgPath="%ProgramFiles%\Tenorshare ReiBoot\ReiBoot.exe"

netsh advfirewall firewall show rule name=%RULENAME% >nul
if not ERRORLEVEL 1 (
rem Rule %RULENAME% already exist.
echo Patching Done...

) else (
echo %RULENAME% Patching...
netsh advfirewall firewall add rule name=%RULENAME% dir=out program=%ProgPath% enable=yes profile=any action=block
)

