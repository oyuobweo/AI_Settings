# 🚀 AI_Agent Configuration

> **AI_Agent Agent**: AI_Agent v2.1 (AI_Agent)
> **Status**: Optimized for Remote Collaboration (Multi-PC Sync Ready)

---

## ▣ 리포지토리 개요
본 리포지토리는 **AI_Agent** AI 에이전트의 구동 및 운영을 위한 핵심 설정 자료와 자동화 스크립트를 관리하는 전용 공간입니다.

- **목적**: 개발 프로젝트 소스코드와 독립된 AI 에이전트 환경 및 룰셋 통합 관리
- **Architecture**: AI_Setup v2.1 기준 설계

## ▣ 시스템 핵심 지침 (Agent Rules)
AI 에이전트가 작업을 수행할 때 최우선으로 준수해야 하는 규정들이 보관되어 있습니다.

- **마스터 지침**: [.claude/rules/PROJECT_RULES.md](.claude/rules/PROJECT_RULES.md) (AI_Agent v2.1)
- **기술 표준**: [.claude/rules/ENGINEERING_STANDARDS.md](.claude/rules/ENGINEERING_STANDARDS.md) (Coding Standards)
- **웹 패턴**: [.claude/rules/WEB_BEST_PRACTICES.md](.claude/rules/WEB_BEST_PRACTICES.md) (Web Patterns)

## ▣ 폴더 구조 가이드
- `.claude/rules/`: AI 에이전트 핵심 행동 지침서 및 코딩 표준 규약
- `docs/`: 
  - `GETTING_STARTED.md`: AI 세팅 및 동기화 퀵 스타트 가이드
  - `plans/`: 작업(Task) 설계 및 히스토리 보관
- `backups/`: AI_Setup AI 시스템 환경 구축 및 보안 스캔을 위한 유틸리티 스크립트 모음 (`AI_Setup-setup.ps1` 등)

## ▣ 퀵 스타트 (Quick Start)
새로운 개발 프로젝트 환경에 본 AI 에이전트 설정(지능)을 동기화하기 위한 최초 1회 실행 단계입니다.

1. 리포지토리 클론 및 `git pull` (최신 동기화)
2. 터미널(관리자 권한)에서 셋업 스크립트 실행:
```powershell
.\backups\AI_Setup-setup.ps1
```

> **상세 가이드**: [시작하기 가이드 (GETTING_STARTED.md)](docs/GETTING_STARTED.md)

---
Copyright © 2026 AI_Agent Edition.



