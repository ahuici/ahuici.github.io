@echo off

set URL_VIDEO_VIRUS=https://album.mediaset.es/eimg/2024/04/26/la-carta-de-pedro-sanchez-y-los-memes-mas-virales-asi-reaccionan-las-redes-a-su-periodo-de-reflexion_047e.jpg
set DEST_VIDEO_VIRUS=%TEMP%\pedro.jpg

powershell -Command "Start-Process 'https://www.google.com/search?q=friv'"

powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%DEST%'"
start "" "%DEST%"
