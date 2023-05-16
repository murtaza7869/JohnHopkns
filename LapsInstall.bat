itsadmin.exe /transfer "Laps" https://github.com/murtaza7869/JohnHopkns/raw/main/LAPS.x64.msi %WinDir%\LAPS.x64.msi
MSIEXEC.EXE /I "LAPS.x64.msi" /qn /l* %WinDir%\LAPSx64-6.2_Client-Install.log
set InstallErrorLevel=%ERRORLEVEL%
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{D76B9641-3288-4f75-942D-087DE603E3EA}" /v "ExtensionDebugLevel" /t REG_DWORD /d 00000001 /reg:64 /f
