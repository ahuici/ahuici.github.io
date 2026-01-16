@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg' -OutFile \"$env:TEMP\pedro.jpg\""

timeout /t 1 /nobreak >nul

powershell -Command "Start-Process -FilePath (Join-Path $env:TEMP 'pedro.jpg')"
