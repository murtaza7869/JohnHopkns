#File Explorer Open to This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
ping localhost

#Disable Edge Shortcut on Desktop
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v DisableEdgeDesktopShortcutCreation /t REG_DWORD /d 1 /f
ping localhost
 
#Remove Defender First Run
reg add "HKCU\Software\Microsoft\Windows Defender" /v UIFirstRun /t REG_DWORD /d 0 /f

#Rename Local Guest Account
wmic.exe useraccount where name='Guest' call rename name='KSASguest'
ping localhost

#Rename Local Administrator Account
wmic.exe useraccount where name='Administrator' call rename name='KSASADMIN'
ping localhost
 
#Disable USB Selective Suspend Setting
powercfg /SETACVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
ping localhost
