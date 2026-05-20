# 🛡️ AI_Settings Setup Encoding Fix Plan
---
> **ID**: plan_20260520_1320_encoding_fix
> **Role**: Lead Engineer Agent
> **Target**: `ai-setup.bat` (PowerShell 한글 인코딩 깨짐 에러 해결)
---

## 1) Problem Summary (핵심 문제 요약)
- **현상**: 사용자가 `ai-setup.bat` 파일을 더블클릭하여 기동할 때, CMD 창에 `'' is not recognized...`, `'Ͽ'`, `'olicy'` 같은 명령 오류가 대거 발생하며 파워쉘 기동 및 환경 설정에 실패함.
- **원인**: 원격 깃허브 저장소에서 받아오는 `ai-setup.ps1` 파일에 포함된 UTF-8 한글 문자열이 윈도우 기본 CMD/PowerShell(CP949 환경)에서 그대로 디코딩 없이 실행(`System.Net.WebClient.DownloadString`)되어, 바이트 조각이 깨지고 강제 파싱되어 발생한 문법 파괴 현상.
- **해결 방안**: 파워쉘 호출 시 `[System.Text.Encoding]::UTF8` 명시 지정을 삽입하고, 배치 파일 자체를 UTF-8(BOM 없음)로 명확히 재정렬하여 원격 저장소에 동기화함.

---

## 2) Design Summary (설계 요약)
- **목적**: 윈도우 환경(CP949) 및 원격 깃허브 인코딩(UTF-8) 간의 완전한 상호 운용성 보장 및 100% 무결한 원클릭 셋업 환경 복구.
- **입출력 (I/O)**:
  - **Input**: `ai-setup.bat` 더블클릭 실행.
  - **Output**: UTF-8 디코딩된 `ai-setup.ps1`을 통한 무결한 로컬 환경 구축 및 `AI_Setup_SETUP_SUCCESSFUL` 성공 시그널 방출.
- **예외 처리**: 웹 클라이언트 통신 실패 시 TLS 1.2 강제 지정(`[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12`)을 선제적으로 포함하여 네트워크 환경에 따른 다운로드 누락을 예방함.

---

## 3) Implementation Plan (구현 계획)
- **Step 1**: `ai-setup.bat` 내 PowerShell 인코딩 강제 주입 구문 적용 및 파일 정비.
- **Step 2**: 로컬 환경에서 수정 사항 커밋 및 `https://github.com/oyuobweo/AI_Settings.git` 원격지로 강제 동기화(Push).
- **Step 3**: 사용자가 예전 구버전 캐시 또는 기존 배치 파일을 무심코 실행하여 동일 에러를 겪지 않도록, 초간편 메모장 복사-붙여넣기 갱신 가이드 제공.

---

## 4) Implementation (구현 상세)
### [MODIFY] `ai-setup.bat` (PowerShell UTF-8 디코딩 강제화)
```batch
@echo off
title AI_Settings Master Setup (v2.2 Final)
echo ==========================================================
echo   [AI_Settings] 1-Second Master Setup (Double-Click)
echo ==========================================================
echo ^>^>^> Automatically invoking PowerShell...
echo ^>^>^> Downloading and executing setup script from GitHub...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $wc = New-Object System.Net.WebClient; $wc.Encoding = [System.Text.Encoding]::UTF8; iex $wc.DownloadString('https://raw.githubusercontent.com/oyuobweo/AI_Settings/main/ai-setup.ps1')"

echo.
echo ==========================================================
echo   OK: Setup process finished!
echo ==========================================================
echo.
pause
```

---

## 5) Testing (검증 계획)
- **자체 검증**: 로컬 CLI(PowerShell) 환경에서 위 배치 명령이 윈도우 인코딩 환경에서 에러 없이 `ai-setup.ps1`을 완벽하게 내려받아 실행하는지 테스트.
- **통합 검증**: git push 후 raw 주소에 대한 curl/wget 응답 상태 및 갱신 상태 팩트체크.

---

## 6) Behavior Summary (동작 방식)
1. 사용자가 `ai-setup.bat`을 더블클릭합니다.
2. 배치 파일은 즉시 파워쉘을 Bypass 권한으로 띄우며 TLS 1.2 보안 프로토콜과 UTF-8 텍스트 인코딩을 적용합니다.
3. 깃허브에서 깨끗하게 수신된 UTF-8 코드를 `iex`로 받아 실행하므로, 한글 주석이나 룰셋 내용이 깨지지 않고 정상 처리됩니다.
4. 로컬 환경에 초정밀 마스터 룰과 동적 리포지토리 웜홀이 1초 만에 구성됩니다.

---

## 7) Self Code Review (개선안 및 위험 식별)
- **Risk**: 윈도우 계정 권한 정책이나 네트워크 방화벽이 파워쉘 WebClient 자체를 통제할 위험이 있음.
- **Fallback**: 이 경우 깃허브 저장소를 직접 zip으로 내려받거나, 또는 터미널 수동 세팅 명령어를 즉시 백업 가이드로 제공하여 리스크 완벽 차단.
