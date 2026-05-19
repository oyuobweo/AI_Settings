# 태스크 계획서: AI_Agent Agent 중복 호칭 제거 및 아키텍처 무결성 검증
---
- **작성일시**: 2026년 5월 20일 08:55
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: `master.md` 및 `ai-setup.ps1` 마스터 룰 템플릿의 Role 설명에 `AI_Agent Agent`라는 단어가 중복 사용(중언부언)되어 부자연스러움.
- **아키텍처 질문**: 마스터 지침(`master.md`)과 리포지토리 창고(`ECC_Library`)가 기술적으로 오차 없이 100% 조화를 이루며 동작하는지에 대한 검증 요구.

---

## 2) Design Summary
### ▣ 명칭 정제 (AI_Agent Agent ➔ AI_Agent)
- 대상 파일:
  1. `backups/ai-setup.ps1`의 라인 33 템플릿 내용.
  2. 로컬에 장착되어 있는 글로벌 `C:\Users\LYH\.claude\rules\master.md` 파일의 라인 3 내용.
- 변경 사항: `AI_Agent Agent` 단어를 `AI_Agent`로 깔끔하게 수정.

### ▣ 아키텍처 결합성 검증 (톱니바퀴 조화 원리)
- 마스터 룰(`master.md`)은 AI의 **'뇌(컨트롤 타워)'**에 항시 상주하여 행동 규칙과 검색 범위를 통제합니다.
- 리포지토리(`ECC_Library`)는 AI가 동적으로 참조하는 **'지식 창고'**입니다.
- 마스터 룰에 이 리포지토리의 로컬 물리 경로가 동적으로 고정 주입되어 있으므로, AI는 다른 어떠한 프로젝트 폴더에 있더라도 리포지토리로 바로 다이렉트 점프하여 100% 동기화된 마스터/디테일 룰셋을 활용합니다.

---

## 3) Implementation Plan
1. **[Script Fix]** `backups/ai-setup.ps1` 내 `AI_Agent Agent` 명칭을 `AI_Agent`로 수정.
2. **[Global Fix]** `C:\Users\LYH\.claude\rules\master.md` 파일 내 `AI_Agent Agent` 명칭을 동일하게 수정하여 즉각적인 동기화 보장.
3. **[Git Commit & Push]** 스크립트 수정 사항 커밋 및 푸시.
4. **[Explanation]** 톱니바퀴처럼 조화롭게 맞물리는 동작 메커니즘을 상세히 설명.

---

## 4) Verification Plan
- **파일 검증**: `Select-String`을 사용하여 `AI_Agent Agent`라는 중복 단어가 스크립트와 글로벌 파일 양쪽에서 완전히 소멸되었는지 검증.
