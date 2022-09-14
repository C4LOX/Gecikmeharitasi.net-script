:Start
@Echo off
color b
title Gecikmeharitasi.net
ECHO. %date% >> ping.txt
ECHO. %time% >> ping.txt
ECHO.
ECHO. ------------------------------------------------ && ECHO.                   DNS Sunuculari>> ping.txt
ECHO. ------------------------------------------------ && ECHO.                   DNS Sunuculari
ECHO. ------------------------------------------------ && ECHO.  Adgurad DNS
ECHO. ------------------------------------------------ && ECHO. Adgurad DNS>> ping.txt
Call:Adgurad 94.140.14.14
ECHO. - Adgurad			%ms% >> ping.txt  
Call:Adgurad 94.140.14.14
ECHO. - Adgurad			%ms%
ECHO. ------------------------------------------------ && ECHO.  Google Sunuculari
ECHO. ------------------------------------------------ && ECHO.  Google Sunuculari>> ping.txt
Call:Google google.com
ECHO. - Google			%ms% >> ping.txt  
Call:Google google.com
ECHO. - Google			%ms%
Call:GoogleDNS 8.8.8.8
ECHO. - Google DNS			%ms% >> ping.txt
Call:GoogleDNS 8.8.8.8
ECHO. - Google DNS			%ms%  
ECHO. ------------------------------------------------ && ECHO.  Next DNS 
ECHO. ------------------------------------------------ && ECHO.  Next DNS >> ping.txt
Call:NextDns dns1.nextdns.io
ECHO. - Next DNS			%ms% >> ping.txt  
Call:NextDns dns1.nextdns.io
ECHO. - Next DNS			%ms% 
ECHO. ------------------------------------------------ && ECHO.  CloudFlare 
ECHO. ------------------------------------------------ && ECHO.  CloudFlare >> ping.txt
Call:CloudFlare 1.1.1.1
ECHO. - DNS:				%ms% >> ping.txt
Call:CloudFlare 1.1.1.1
ECHO. - DNS:				%ms%
ECHO. ------------------------------------------------ && ECHO.  Next DNS 
ECHO. ------------------------------------------------ && ECHO.  Next DNS >> ping.txt
Call:NextDns dns1.nextdns.io
ECHO. - Next DNS			%ms% >> ping.txt  
Call:NextDns dns1.nextdns.io
ECHO. - Next DNS			%ms% 
ECHO. ------------------------------------------------  && ECHO.  Amazon Sunuculari
ECHO. ------------------------------------------------  && ECHO.  Amazon Sunuculari>> ping.txt
CALL:Amazon 52.29.63.252
ECHO. - AWS Frankfurt:		%ms%
CALL:Amazon 52.29.63.252
ECHO. - AWS Frankfurt:		%ms% >> ping.txt
CALL:Amazon 52.94.15.16
ECHO. - AWS Londra:			%ms%
CALL:Amazon 52.94.15.16
ECHO. - AWS Londra:			%ms% >> ping.txt
ECHO. ------------------------------------------------  && ECHO.  Amazon Sunuculari
ECHO. ------------------------------------------------  && ECHO.  Amazon Sunuculari>> ping.txt
CALL:Amazon 52.29.63.252
ECHO. - AWS Frankfurt:		%ms%
CALL:Amazon 52.29.63.252
ECHO. - AWS Frankfurt:		%ms% >> ping.txt
CALL:Amazon 52.94.15.16
ECHO. - AWS Londra:			%ms%
CALL:Amazon 52.94.15.16
ECHO. - AWS Londra:			%ms% >> ping.txt
ECHO. ------------------------------------------------ && ECHO.                   Oyun Sunuculari>> ping.txt
ECHO. ------------------------------------------------ && ECHO.                   Oyun Sunuculari
ECHO. ------------------------------------------------  && ECHO.  Valve Sunucusu
ECHO. ------------------------------------------------  && ECHO.  Valve Sunucusu>> ping.txt
CALL:Valve 146.66.155.1
ECHO. - Viyana:			%ms% 
CALL:Valve 146.66.155.1
ECHO. - Viyana:			%ms% >> ping.txt
ECHO. ------------------------------------------------ && ECHO.  Riot Games Sunuculari
ECHO. ------------------------------------------------ && ECHO.  Riot Games Sunuculari>> ping.txt
CALL:Riot 104.160.143.212
ECHO. - Turkiye:			%ms% >> ping.txt
CALL:Riot 104.160.143.212
ECHO. - Turkiye:			%ms%
CALL:Riot 104.160.143.124
ECHO. - Avrupa:			%ms% >> ping.txt
CALL:Riot 104.160.143.124
ECHO. - Avrupa:			%ms%
ECHO. ------------------------------------------------  && ECHO.  Rainbow Six Siege Sunuculari
ECHO. ------------------------------------------------  && ECHO.  Rainbow Six Siege Sunuculari>> ping.txt
CALL:Rainbow6 18.156.0.0
ECHO. - eu-west:			%ms% >> ping.txt
CALL:Rainbow6 18.156.0.0
ECHO. - eu-west:			%ms%
ECHO. ------------------------------------------------  && ECHO.  PUGB Sunuculari
ECHO. ------------------------------------------------  && ECHO.  PUGB Sunuculari>> ping.txt
Call:PUGB 35.156.63.252
ECHO. - PUBG PC Frankfurt:		%ms%
Call:PUGB 35.156.63.252
ECHO. - PUBG PC Frankfurt:		%ms% >> ping.txt
Call:PUGB 162.62.97.238
ECHO. - PUBG Mobile:			%ms%
Call:PUGB 162.62.97.238
ECHO. - PUBG Mobile:			%ms% >> ping.txt
ECHO. ------------------------------------------------ && ECHO.  Fortnite (Epic Games) Sunuculari
ECHO. ------------------------------------------------ && ECHO.  Fortnite (Epic Games) Sunuculari>> ping.txt
Call:Fortnite qosping-aws-eu-west-3.ol.epicgames.com 
ECHO. - Avrupa:			%ms% >> ping.txt
Call:Fortnite qosping-aws-eu-west-3.ol.epicgames.com 
ECHO. - Avrupa:			%ms%
ECHO. ------------------------------------------------ 
ECHO. Gecikme Degerleri Dizindeki Ping.txt'ye kaydedildi
ECHO. Scripti kapatabilirsiniz...
ECHO. ------------------------------------------------
ECHO.                                            V.2.8.3
ECHO. ------------------------------------------------>> ping.txt
ECHO.                                            V.2.8.3>> ping.txt
ECHO. ------------------------------------------------
pause
cls
goto Start
:Adgurad
:Valve
:CloudFlare
:Google
:Amazon
:Online
:Rainbow6
:GIBIRNet
:GoogleDNS
:Fortnite
:GIBIRNet
:Battlefield
:Fortnite
:Valve
:PUGB
:Games
:Riot
:Next 
:Rainbow 
:Europe
:Twitch
:Google
:GoogleDNS
:NextDns
:CloudFlare_IPV6
:Battlefield
:GFN
:Frankfurt_1
:Frankfurt_2
:Rocket
SET ms=Error
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF


