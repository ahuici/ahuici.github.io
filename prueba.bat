@echo off

set "URL_VIDEO_VIRUS=https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg"
set "DEST_VIDEO_VIRUS=%TEMP%\pedro.jpg"

powershell -Command "Invoke-WebRequest -Uri '%URL_VIDEO_VIRUS%' -OutFile '%DEST_VIDEO_VIRUS%'"

timeout /t 5 /nobreak >nul

start "" "%DEST_VIDEO_VIRUS%"
