# Airbnb Analytics with dbt
**Airbnb Analytics with dbt + Dagster + Snowflake**

This is a practice dbt project using Airbnb open data to model and analyze listing and review metrics.

## What I learned ✨

- ✅ Raw → Staging → Data Mart 계층별 모델 구성 방법
- ✅ dbt Core의 기본 구조 (models, macros, tests, seeds, snapshots)
- ✅ Incremental model과 full-refresh 전략의 차이 및 설정 방법
- ✅ dbt-expectations를 활용한 데이터 품질 테스트
- ✅ Exposure을 통해 분석 대시보드와 모델 연결 (Preset/Superset 연동)
- ✅ Snowflake를 타겟으로 하는 dbt 프로젝트 구성
- ✅ Dagster를 통한 워크플로우 오케스트레이션 및 스케줄링 적용

## Folder Structure
```
├── models/
│   ├── src/
│   ├── staging/
│   ├── marts/
├── macros/
├── snapshots/
├── analyses/
├── seeds/
├── dbt_project.yml
├── README.md
```

## Use Cases

- 리뷰 수/감성 분석에 기반한 KPI 대시보드 구축
- 최소 숙박일수, 슈퍼호스트 여부 등 차원 테이블 관리
- Dagster를 이용한 스케줄 기반 모델 재구축
