@echo off

powershell -Command "Invoke-WebRequest -Uri 'https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg' -OutFile '%TEMP%\pedro.jpg'"

timeout /t 15 /nobreak >nul

start "" "%TEMP%\pedro.jpg"
