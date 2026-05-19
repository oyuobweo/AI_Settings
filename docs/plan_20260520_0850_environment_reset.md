# 태스크 계획서: 사용자 로컬 AI_Agent 환경 초기화 및 신규 셋업 가이드
---
- **작성일시**: 2026년 5월 20일 08:50
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: 사용자 컴퓨터에 이전에 설치되어 사용 중이던 무거운 옛날 식 룰 폴더 찌꺼기들이 글로벌 경로(`C:\Users\LYH\.claude`)에 남아 있습니다.
- **영향**: 이전 찌꺼기가 남아 있으면 오늘 새롭게 빌드한 'AI_Settings' 자동 동기화 지침과 충돌하거나 AI 동작이 무거워질 수 있습니다.
- **해결책**:
  1. 기존의 무거운 글로벌 디렉토리(`~/.claude/`)를 완전히 청소(초기화)합니다.
  2. 오늘 새롭게 정비하고 깃허브에 반영한 최신 `ai-setup.ps1` 스크립트를 적용하여 청정 환경을 구축합니다.

---

## 2) Design Summary
### ▣ 목적
- 찌꺼기 없는 Clean-slate 환경을 만들고, 오늘 날짜로 최적화된 새로운 마스터 지능을 이식합니다.

### ▣ 실행 절차 및 세부 로직
#### 1단계: 기존의 노후 뇌 폴더 포맷 (초기화)
- 삭제 대상: `C:\Users\LYH\.claude` 하위의 모든 파일 및 디렉토리 (`rules`, `settings.json` 등).
- 처리 방법: 사용자의 번거로움을 덜기 위해 Antigravity가 직접 명령어로 안전하고 빠르게 초기화(포맷)를 대행합니다.

#### 2단계: 최신형 마스터 지능 셋업 (적용)
- 실행 대상: `C:\Users\LYH\.gemini\antigravity\scratch\AI_Settings\backups\ai-setup.ps1` 스크립트 실행.
- 안내 방법: 왕초보 사용자도 바로 복사-붙여넣기로 성공할 수 있도록 친절하고 상세한 파워쉘 실행 명령 및 절차 가이드를 제공합니다.

---

## 3) Implementation Plan
1. **[Auto Clear]** 사용자의 동의를 구한 뒤 `C:\Users\LYH\.claude` 폴더를 명령어로 안전하게 직접 삭제 처리.
2. **[Step-by-Step Guide]** 파워쉘에서 최신 스크립트를 수동으로 안전하게 작동하여 셋업을 완료할 수 있도록, 상세한 PowerShell 명령어 조작 가이드 안내.

---

## 4) Verification Plan
- **초기화 검증**: `Test-Path C:\Users\LYH\.claude` 가 False를 반환하는지 확인하여 잔여물 제거 검증.
- **신규 셋업 검증**: `ai-setup.ps1` 실행 완료 후 글로벌 폴더에 `settings.json`과 `rules/master.md`가 정상 복사되었는지 확인.
