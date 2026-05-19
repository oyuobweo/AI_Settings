# 태스크 계획서: AI_Agent 명칭 통일 (Terminology Unification)
---
- **작성일시**: 2026년 5월 20일 08:48
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: 리포지토리 파일 및 문서 내에서 AI를 지칭하는 명칭이 'AI 비서', '에이전트', 'AI_Agent' 등으로 혼용되어 사용됨.
- **영향**: 리포지토리 규칙서의 전문성이 저하되고, 사용자에게 일관성 없는 개념 전달 우려가 있음.
- **해결책**: 혼용되는 명칭들을 가장 직관적이고 표준적인 명칭인 **'AI_Agent'**로 일괄 통일하여 리포지토리의 명확성과 전문성을 제고함.

---

## 2) Design Summary
### ▣ 목적
- 리포지토리 내부의 모든 한국어 문서 및 스크립트에서 AI를 수식하는 어휘를 'AI_Agent'로 단일화.

### ▣ 치환 명세
| 대상 파일 | 수정 전 라인 내용 | 수정 후 라인 내용 |
| :--- | :--- | :--- |
| `README.md` (Line 12) | `### 방법 A: AI 비서에게 맡기기` | `### 방법 A: AI_Agent에게 맡기기` |
| `README.md` (Line 17) | `### 방법 B: 내가 직접 수동으로 세팅하기 (AI 비서가...` | `### 방법 B: 내가 직접 수동으로 세팅하기 (AI_Agent가...` |
| `backups/ai-uninstall.ps1` (Line 2) | `# 이 스크립트는 로컬 컴퓨터의 하모니 에이전트 환경을...` | `# 이 스크립트는 로컬 컴퓨터의 하모니 AI_Agent 환경을...` |
| `backups/ai-uninstall.ps1` (Line 4) | `Write-Host ">>> AI_Setup 에이전트 환경..."` | `Write-Host ">>> AI_Setup AI_Agent 환경..."` |

---

## 3) Implementation Plan
1. **[Apply Unification]** `README.md` 및 `ai-uninstall.ps1` 파일 내 해당 라인 수정.
2. **[TDD / Script Verification]** 수정 후 PowerShell 스크립트를 통한 전수 키워드 스캔을 실행하여 '비서' 및 '에이전트' 키워드가 누락 없이 정제되었는지 검증.
3. **[Git Sync]** 수정 내역 Git 커밋 및 원격 리포지토리(Push) 반영.

---

## 4) Verification Plan
- **키워드 스캔**: PowerShell `Select-String` 명령을 사용해 '비서'와 '에이전트'가 완전히 제거되고 'AI_Agent'로 교체되었는지 확인.
