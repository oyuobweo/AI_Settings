# 태스크 계획서: AI_Settings 대화방 vs Cost-Revit 대화방 아키텍처적 차이 분석
---
- **작성일시**: 2026년 5월 20일 10:10
- **버전**: v1.0
- **상태**: 승인 대기 (Draft)

---

## 1) Problem Summary
- **현상**: 사용자가 현재 `AI_Settings` 컨텍스트 내의 대화방(Conversations)에서 작업하는 것과 새 프로젝트인 `Cost-Revit` 워크스페이스 대화방에서 신규로 작업하는 것의 기술적 및 실무적 차이점을 문의함.
- **해결책**:
  - 컨텍스트 오염 방지, 토큰 효율성(Token Efficiency), 그리고 글로벌 마스터 지능의 서포트 효과 관점에서 두 대화방의 핵심 차이점을 명확히 해설합니다.

---

## 2) Design Summary: 세부 차이 요약
- **1. 집중 도메인 및 타겟 폴더의 격리 (Workspace Isolation)**:
  - `AI_Settings` 대화방: 타겟이 설정 창고이므로 구현 코드를 짜면 설정 폴더에 파일이 생성되어 난잡해짐.
  - `Cost-Revit` 대화방: 타겟이 수량산출 본체 코드이므로 안전하게 격리된 청정 개발 가능.
- **2. 컨텍스트 창 및 연산 지능의 쾌속성 (Context Optimization)**:
  - 현재 방: 다수의 셋업 및 리펙토링 대화 누적으로 토큰이 무거움.
  - 새 방: 완전한 Clean-slate(가벼움) 상태로 출발하여 AI의 속도 및 지적 추론력 최대화.
- **3. 마스터 지침의 진정한 실전 작동 (Master Rule Synergy)**:
  - 새 방에 진입하는 순간, 오늘 세팅한 `master.md` 최상위 절대 지침이 동작하여 `AI_Settings/ECC_Library` 창고를 백그라운드에서 실시간 자동 참조하고 고품격 코딩을 가동함.

---

## 3) Implementation Plan
1. **[Visual Metaphor]** '공구 창고에서 코딩하기(AI_Settings)' vs '전용 연구실에서 개발하기(Cost-Revit)' 비유를 차용하여 기술을 극도로 이해하기 쉽게 해설.
2. **[SaaS Best Practice]** 프로젝트 분할과 AI 협업 시의 모범 실무 사례(Best Practice)로 승화하여 안내.

---

## 4) Verification Plan
- **수동 검증**: 제안된 내용이 Antigravity의 컨텍스트 윈도우 관리 지침 및 로컬 룰셋 이식 스펙에 명확히 부합하는지 교차 체크.
