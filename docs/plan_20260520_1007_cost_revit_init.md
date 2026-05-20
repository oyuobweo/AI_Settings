# 태스크 계획서: Cost-Revit 프로젝트 깃 저장소 초기화 대행 및 활성화
---
- **작성일시**: 2026년 5월 20일 10:07
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: 사용자가 새 프로젝트인 `Cost-Revit`을 진행하려고 하나, 깃 저장소 초기화(`git init`)가 되어 있지 않아 `New Worktree` 등의 고급 깃 기능이 차단되어 있음.
- **해결책**:
  - 사용자가 수동으로 타이핑하는 번거로움을 덜어주기 위해 Antigravity가 직접 `C:\Users\LYH\.gemini\antigravity\scratch\Cost-Revit` 디렉토리를 확보(생성)하고, 해당 폴더 내에 즉시 `git init`을 작동하여 깃 저장소 초기화를 완벽하게 대행 완료합니다.

---

## 2) Design Summary: 대행 및 적용 확인
- **수행 내역**:
  - 로컬 디스크 경로: `C:\Users\LYH\.gemini\antigravity\scratch\Cost-Revit`
  - 명령: `git init` 실행 완료
  - 영향: `.git` 폴더가 안전하게 생성되어 이제 Antigravity 툴에서 `New Worktree` 옵션 잠금이 즉각적으로 해제 및 활성화됩니다.
- **추가 권장사항**:
  - 사용자님께 해당 서브디렉토리를 안티그래비티의 활성 워크스페이스(Active Workspace)로 등록 및 지정하여 개발을 진행하실 것을 정중하게 안내합니다.

---

## 3) Implementation Plan
1. **[Git Auto Init]** PowerShell을 통해 원터치로 프로젝트 폴더 보장 및 `git init`을 실시간 성공적으로 구동 완료.
2. **[UI Unlock Confirmation]** 옵션 잠금이 풀려있음을 시각적으로 확인 유도.
3. **[Workspace Recommendation]** 룰셋 규칙에 의거, `Cost-Revit` 서브디렉토리를 액티브 워크스페이스로 지정해 코딩을 이어나갈 것을 가이드.

---

## 4) Verification Plan
- **자동 검증**: `Test-Path C:\Users\LYH\.gemini\antigravity\scratch\Cost-Revit\.git`이 True를 반환하는지 체크하여 안전하게 초기화가 완수되었음을 물리적으로 증명.
