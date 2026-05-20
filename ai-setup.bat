@echo off
title AI_Settings Master Setup (v2.2 Final)
echo ==========================================================
echo   [AI_Settings] 1-Second Master Setup (Double-Click)
echo ==========================================================
echo >>> Automatically invoking PowerShell...
echo >>> Downloading and executing setup script from GitHub...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/oyuobweo/AI_Settings/main/ai-setup.ps1'))"

echo.
echo ==========================================================
echo   OK: Setup process finished!
echo ==========================================================
echo.
pause
