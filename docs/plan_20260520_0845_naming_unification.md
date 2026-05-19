# 태스크 계획서: AI_Settings 파일 및 폴더 표기법 통일 (Naming Unification)
---
- **작성일시**: 2026년 5월 20일 08:45
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: `AI_Settings` 리포지토리 및 설정 폴더 내의 일부 파일명이 `SCREAMING_SNAKE_CASE` (예: `ENGINEERING_STANDARDS.md`) 등으로 대소문자 표기법이 혼재되어 가독성 및 일관성이 떨어짐.
- **영향**: 리포지토리의 전반적인 완성도와 통일감이 저하되며, 초보 사용자가 규칙 파일을 조회할 때 혼선 유발 가능.
- **해결책**: 표시 형식을 통일해도 도구 동작에 전혀 문제가 없는 `.claude/rules/` 하위 파일명들을 소문자 `kebab-case`로 일괄 통일하여 명명 규칙의 일관성을 확보함.

---

## 2) Design Summary
### ▣ 목적
- 리포지토리 내의 파일명 표기 규칙을 `kebab-case` (소문자 + 하이픈)로 일관되게 통일하여 디자인 및 사용성을 최적화함.

### ▣ 대상 범위 및 변환 규칙
| 기존 파일명 | 변경 후 파일명 | 변환 규칙 | 비고 |
| :--- | :--- | :--- | :--- |
| `.claude/rules/ENGINEERING_STANDARDS.md` | `.claude/rules/engineering-standards.md` | `kebab-case` (소문자화) | 규칙 로드 및 인덱싱에 문제 없음 |
| `.claude/rules/PROJECT_RULES.md` | `.claude/rules/project-rules.md` | `kebab-case` (소문자화) | 규칙 로드 및 인덱싱에 문제 없음 |
| `.claude/rules/WEB_BEST_PRACTICES.md` | `.claude/rules/web-best-practices.md` | `kebab-case` (소문자화) | 규칙 로드 및 인덱싱에 문제 없음 |

### ▣ 예외 처리 및 고려사항
- `README.md` 등 표준 대문자 파일명은 마크다운 업계 표준을 따르므로 그대로 유지함.
- 폴더명(`ECC_Library`, `1_공통_핵심규칙` 등)은 한글 명명 체계 및 라이브러리 구분 번호의 기존 규칙이 뚜렷하므로 굳이 수정하지 않고 유지함.

---

## 3) Implementation Plan (SRP 준수 분할)
1. **[Git Rename]** Git 명령어를 사용하여 안전하게 대문자 규칙 파일들을 소문자 `kebab-case`로 변경 (`git mv`).
2. **[Script Verify]** `ai-setup.ps1`이나 기존 세팅에서 이 파일들을 명시적으로 참조하거나 복사하는 로직이 있는지 전수조사 후, 만약 있을 시 자동 업데이트.
3. **[README Sync]** `README.md` 및 문서 내에서 대문자로 언급된 링크나 파일명 표기가 있다면 새 표기법에 맞게 업데이트.
4. **[TDD / Verification]** 파일 변경 후 git status 및 정상 동작 여부 검증.

---

## 4) Verification Plan
- **자동 검증**: `git status`를 실행하여 파일명 변경이 정상적으로 추적되고 있는지 확인.
- **수동 검증**: 변경된 파일 경로와 링크가 마크다운 뷰어 및 에디터에서 깨지지 않고 올바르게 동작하는지 확인.
