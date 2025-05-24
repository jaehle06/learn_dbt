# Learn dbt with Airbnb Dataset 🏠

This repository contains my hands-on learning journey with [dbt (data build tool)](https://www.getdbt.com/) using the Airbnb dataset.

The goal of this project is to understand how dbt operates in a real-world-like environment by applying best practices in data modeling, testing, documentation, and orchestration.

---

## 🧠 What I Learned

### ✅ Core Concepts
- How `dbt` compiles SQL and builds lineage (DAG) of transformations
- Difference between **ephemeral**, **view**, **table**, and **incremental** materializations
- Understanding `ref()`, `source()`, and Jinja templating

### ✅ Data Modeling
- Built staging, dimension, and fact models based on Airbnb data
- Applied **star schema** modeling techniques
- Implemented **surrogate keys** using `dbt_utils.generate_surrogate_key`

### ✅ Testing
- Used built-in tests: `unique`, `not_null`, `accepted_values`, `relationships`
- Added **custom tests** with `dbt-expectations` inspired by Great Expectations
- Validated row count consistency between `dim_listings_w_hosts` and the raw source

### ✅ Documentation
- Wrote schema-level and column-level documentation
- Linked dbt models to external dashboards using `exposures`
- Hosted and served the `dbt docs` site for interactive exploration

### ✅ Hooks & Permissions
- Used **post-hook** to automatically `GRANT SELECT` on models to BI tools
- Created a dedicated Snowflake user (`PRESET`) with `REPORTER` role for dashboard usage

### ✅ Dashboard Integration
- Built a dashboard with [Preset (Superset)](https://preset.io/) to visualize sentiment trends
- Connected Snowflake to Preset for live data reporting
- Registered the dashboard as an `exposure` in dbt

---

## 💻 Project Structure

├── models/
│ ├── src/ # Source layer (ephemeral)
│ ├── staging/ # Cleansed data
│ ├── dim/ # Dimension tables
│ ├── fct/ # Fact tables
│ └── mart/ # Final marts
├── snapshots/ # Snapshots (temporal data capture)
├── analyses/ # Ad hoc analytical queries
├── tests/ # Custom and singular tests
├── macros/ # Reusable Jinja macros
├── dbt_project.yml # dbt project config
└── packages.yml # dbt packages (dbt-utils, dbt-expectations)


## 📦 Useful Commands

```bash
# Run models
dbt run

# Run tests
dbt test

# Serve documentation site
dbt docs generate
dbt docs serve