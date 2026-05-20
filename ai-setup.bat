@echo off
title AI_Settings Master Setup (v2.2 Final)
echo ==========================================================
echo   🛡️ AI_Settings 1초 웜홀 통합 셋업 (Double-Click Edition)
echo ==========================================================
echo >>> 파워쉘을 자동 호출하여 GitHub로부터 최신 셋업 스크립트를 다운로드합니다...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/oyuobweo/AI_Settings/main/ai-setup.ps1'))"

echo.
echo ==========================================================
echo  OK: 모든 셋업 및 웜홀 최적화 과정이 완료되었습니다!
echo ==========================================================
echo.
pause
