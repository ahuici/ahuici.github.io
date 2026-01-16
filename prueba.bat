@echo off

@REM powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg' -OutFile \"$env:TEMP\pedro.png\""

@REM start "" "https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg"

@REM powershell -Command "for ($i = 1; $i -le 35; $i++) { Copy-Item -Path \"$env:TEMP\pedro.png\" -Destination \"C:\Users\$env:USERNAME\Desktop\pedro$i.png\" }"

set "NIR=%TEMP%\nircmd.exe"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest 'https://www.nirsoft.net/utils/nircmd.zip' -OutFile \"$env:TEMP\nircmd.zip\"; Add-Type -AssemblyName System.IO.Compression.FileSystem; [IO.Compression.ZipFile]::ExtractToDirectory(\"$env:TEMP\nircmd.zip\", \"$env:TEMP\")"

"%NIR%" mutesysvolume 0
"%NIR%" setsysvolume 65535

powershell.exe -NoProfile -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Volume = 100; $speak.Speak('Pedro Sanchez. Lol. Es mexicano');"
