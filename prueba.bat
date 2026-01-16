@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg' -OutFile \"$env:TEMP\pedro.png\""

start "" "https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg"

powershell -Command "for ($i = 1; $i -le 35; $i++) { Copy-Item -Path \"$env:TEMP\pedro.png\" -Destination \"C:\Users\$env:USERNAME\Desktop\pedro$i.png\" }"

powershell.exe -NoProfile -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Volume = 100; $speak.Speak('Pedro Sanchez. Lol. Es mexicano');"
