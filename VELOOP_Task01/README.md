# VELOOP Rewards — Product Analytics & Data Readiness Blueprint

**Data Analyst Internship | Task 01**

A complete analytics-foundation project for a developing rewards and engagement product. This repository translates the supplied assignment brief and simulated workbooks into product data requirements, event instrumentation, data models, KPI definitions, data-quality controls, dashboard specifications, and an engineering handoff.

> **Data integrity note:** All workbook-derived analysis in this repository uses simulated/fictional data. It must not be interpreted as VELOOP's actual production performance. Product capabilities and tracking requirements marked Proposed or To Be Verified are not claims that the feature or event is live.

## Start here

1. Read [`01_Executive_and_Audit/01_Executive_Summary.md`](01_Executive_and_Audit/01_Executive_Summary.md).
2. Review [`09_Final_Submission/FINAL_CONSOLIDATED_REPORT.md`](09_Final_Submission/FINAL_CONSOLIDATED_REPORT.md).
3. Check the 21-item register in [`09_Final_Submission/DELIVERABLE_REGISTER.xlsx`](09_Final_Submission/DELIVERABLE_REGISTER.xlsx).
4. Open [`01_Executive_and_Audit/04_Verification_and_Evidence_Matrix.md`](01_Executive_and_Audit/04_Verification_and_Evidence_Matrix.md) before treating any requirement as confirmed.

## Project contents

| Area | Contents |
|---|---|
| Executive audit | Executive summary, source register, product data readiness audit, evidence/verification matrix |
| Product specifications | User/account, earning/reward, wallet/withdrawal, referral/engagement specifications |
| Instrumentation | Data coverage matrix and production event tracking plan |
| Data model | Logical ER model and 80+ field data dictionary |
| Measurement | 35+ KPI catalogue, dataset profile, data-quality audit summary |
| BI & engineering | Dashboard blueprint and developer analytics handoff |
| Governance | Pipeline operating model, privacy proposal, readiness assessment, assumptions, backlog, change log |
| Code | Python profiling starter and MySQL 8 schema/analysis SQL |
| Submission | Consolidated report and deliverable register |
| Simulated sources | Original supplied fictional Excel workbooks |

## Key simulated-data observations

The behavior workbook includes 1,000 user profiles, 7,913 session rows, 35,704 feature-event rows and 9,846 task-activity rows. It contains 5,627 task rows with status `Completed`, giving a **row-based task completion rate of 57.15%** (5,627 / 9,846).

These are workbook-level simulated observations, not production KPIs. The rewards workbook is a separate simulated population and has not been joined to the behavior workbook. A reward-related event flag is not proof that a reward was successfully credited; an authoritative reward ledger is required.

## Run the Python profiling script

Requires Python 3.9+.

```bash
pip install -r requirements.txt
python 08_Code/analyze_veloop.py --behavior 07_Source_Data_SIMULATED/VELOOP_Simulated_User_Behavior_1000.xlsx --rewards 07_Source_Data_SIMULATED/VELoop_Rewards_Data_01.xlsx --out output
```

The script writes profile and audit outputs to the `output/` folder. Run from the repository root.

## SQL

Use MySQL 8+ and execute `08_Code/veloop_mysql_schema_analysis.sql` in a selected database. The script creates proposed analytics tables and example analysis queries. **It does not load Excel files or create a live production connection.** Import and map source data separately before expecting populated query results.

## Power BI

The deliverable is a **dashboard blueprint**, including proposed dashboard pages, metrics and dimensions. A native `.pbix` and Power BI Service deployment are not included or claimed. Build/deploy them only with approved source access, verified production definitions, tenant permissions and refresh credentials.

## Verification status — read before use

- **Confirmed from supplied files:** workbook sheet/data structures and calculated simulated-data observations.
- **Proposed:** recommended event contracts, schema, KPI logic, dashboard design and data-quality controls.
- **To Be Verified:** whether the corresponding feature, backend event, wallet ledger, referral lifecycle, API or production pipeline currently exists.
- **Not evidenced:** any actual VELOOP production performance or engineering implementation.

This is the most defensible status possible from the assignment brief and two simulated workbooks alone. Internal engineering confirmation requires product documentation, production schema/API/event exports or sign-off from VELOOP owners.

## Suggested GitHub description

`Product analytics and data readiness blueprint for a rewards app: simulated-data profiling, event tracking plan, data dictionary, KPI catalogue, data quality, ER model, dashboard blueprint and engineering handoff.`

## Suggested topics

`data-analytics` `product-analytics` `sql` `python` `excel` `power-bi` `data-quality` `event-tracking` `data-modeling` `dashboard`

## Limitations

This repository is an analyst specification and simulated-data exercise. It is not a production system, security review, financial audit, live dashboard, or evidence of deployed tracking. All business rules that depend on product policy (eligibility, reward qualification, withdrawal thresholds, referral attribution, reversals and fraud handling) require approval by the relevant VELOOP owner.
