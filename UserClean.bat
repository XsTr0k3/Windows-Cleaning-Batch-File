@echo off
By Mickey Belisha
:menu
cls
echo/
echo Select an option between 1-5:
echo/
echo A. Clean junk
echo B. Flush NIC
echo C. Get LAN info
echo D. Network connections
echo E. Ping google
choice /c abcde /n
goto %errorlevel%
:1
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\prefetch
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
rd /s /q "c:\windows\prefecth"
md "c:\windows\prefecth"

 del /s /f /q c:\windows\temp\*.*
 rd /s /q c:\windows\temp
 md c:\windows\temp
 del /s /f /q C:\WINDOWS\Prefetch
 del /s /f /q %temp%\*.*
 rd /s /q %temp%
 md %temp%
echo Junk has been cleared.
call :return
:2
Flush NIC 

pushd\windows\system32\drivers\etc
attrib -h -s -r hosts
echo 127.0.0.1 localhost>HOSTS
attrib +r +h +s hosts
popd
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset all
netsh int ip reset all

echo NIC has been flushed.
call :return
:3
echo LAN info:
ipconfig /all
call :return
:4
echo Network connections:
netstat
call :return
:5
ping 8.8.8.8
call :return

:return
echo/
choice /n /m "Return menu?(Y/N)"
if errorlevel 1 goto menu
exit /b