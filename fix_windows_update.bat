rem This came from ChatGPT, I have used it a few times when Windows Update wasn't working,

rem i.e. the updates would start but then would suddenly stop after 10% or so. You should probably

rem try rebooting, etc. as well as the Windows Update troubleshooter before doing this, that 

rem sometimes fixes the issue.



net stop wuauserv

net stop cryptSvc

net stop bits

net stop msiserver

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old

ren C:\Windows\System32\catroot2 Catroot2.old

net start wuauserv

net start cryptSvc

net start bits

net start msiserver