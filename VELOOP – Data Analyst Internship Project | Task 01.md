# VELOOP – Data Analyst Internship Project | Task 01

**An End-to-End Data Analytics, User Behavior Analysis, Data Quality Assessment, and Business Intelligence Project Using Python, SQL, Excel & Power BI**

---

## 1. Project Overview

This project was completed as part of the **VELOOP Data Analyst Internship – Task 01**.

The main objective of this project is to analyze simulated user behavior, user engagement, acquisition sources, account and onboarding status, session activity, feature interactions, task performance, rewards-related events, and XP activity.

The project aims to transform raw datasets into meaningful analytical insights, identify data quality issues, evaluate user engagement patterns, define important business KPIs, and establish a structured foundation for data-driven decision-making.

The project follows a complete end-to-end data analytics workflow, including:

- Data understanding and exploration
- Data profiling and quality assessment
- Data cleaning and validation
- Exploratory Data Analysis (EDA)
- SQL database design and querying
- User behavior and engagement analysis
- Feature usage and task performance analysis
- KPI identification and documentation
- Data dictionary and event tracking specification
- Logical data modelling and ER design
- Dashboard preparation using Power BI
- Business insights and recommendations
- Data governance and developer handoff

**Important:** All datasets and calculated findings used in this project are simulated/fictional and must not be interpreted as actual VELOOP production performance.

---

## 2. Project Objectives

The key objectives of this project are:

1. Understand the structure, coverage, and quality of the available datasets.
2. Analyze user profiles and acquisition sources.
3. Evaluate user engagement and session activity.
4. Understand feature usage and interaction patterns.
5. Measure task completion, failure, abandonment, and pending activities.
6. Analyze rewards-related and XP-related events.
7. Identify missing values, duplicates, invalid values, and data inconsistencies.
8. Prepare meaningful business and product KPIs.
9. Design a structured data dictionary and logical data model.
10. Define proposed production event tracking requirements.
11. Prepare dashboard requirements and Power BI supporting materials.
12. Identify analytics gaps and recommend improvements.
13. Establish a foundation for reliable product analytics and business reporting.

---

## 3. Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| Python | Data profiling, analysis, and automation |
| Pandas | Data manipulation and analysis |
| SQL | Database design, querying, and validation |
| MySQL | Relational database management |
| Microsoft Excel | Data exploration, reporting, and KPI documentation |
| Power BI | Dashboard preparation and visualization |
| Jupyter Notebook | Interactive Python analysis |
| GitHub | Project documentation and version control |

---

## 4. Dataset Description

The project uses two simulated Excel workbooks.

### A. User Behavior Dataset

This workbook contains simulated information about users, sessions, feature interactions, and task activities.

| Dataset / Sheet | Records | Description |
|---|---:|---|
| Users | 1,000 | User profile information |
| Sessions | 7,913 | User session records |
| Feature Events | 35,704 | Feature interaction records |
| Task Activity | 9,846 | Task activity records |

Additional sheets and fields are included in the source workbook and are covered by the profiling process.

### B. Rewards Dataset

The second workbook contains rewards-related information and a `Users_Messy_Audit` sheet used for data quality assessment.

The messy audit dataset is analyzed separately. It is not automatically merged with the user behavior dataset because both workbooks represent separate simulated populations.

---

## 5. Project Workflow

### Step 1 – Data Understanding

- Reviewed the supplied Excel workbooks.
- Identified available worksheets and columns.
- Examined dataset structure and record counts.
- Understood the purpose and coverage of each dataset.

### Step 2 – Data Profiling

Used Python and Pandas to examine:

- Total rows and columns
- Duplicate records
- Missing values
- Data types and dataset structure
- Key field availability

Generated profiling output such as `dataset_profile.csv`.

### Step 3 – Data Quality Assessment

Performed checks for:

- Duplicate user identifiers
- Missing values
- Missing user IDs
- Missing task categories
- Duplicate event identifiers
- Invalid session durations
- Missing task completion timestamps
- User reference integrity
- Inconsistent values in the messy audit dataset

### Step 4 – Exploratory Data Analysis (EDA)

Analyzed different aspects of simulated user behavior:

- User profiles
- User acquisition sources
- Account and onboarding status
- Session activity
- Feature usage
- Task activity and completion
- Task failure and abandonment
- Reward-related events
- XP-related events

### Step 5 – SQL Database Design & Analysis

Designed database structures for:

- Users
- Sessions
- Feature Events
- Task Activity

Prepared SQL queries for:

- Total user counts
- Task status distribution
- Task completion rate by category
- Feature event volume
- Duplicate record checks
- Missing data checks
- Failed tasks by category
- Average session duration
- User acquisition analysis

Additional structures for rewards, withdrawals, and referrals are documented as proposed future data requirements.

### Step 6 – Excel Analysis

Prepared an Excel analysis workbook containing:

- Key findings
- Dataset profiling
- Data quality audit
- KPI catalogue
- Data dictionary
- Event tracking plan

### Step 7 – Power BI Dashboard Preparation

Prepared CSV files, DAX measures, relationship guidance, and dashboard setup documentation.

The dashboard blueprint covers:

- Executive Overview
- User Analytics
- Engagement & Tasks
- Task Completion
- Task Status Distribution
- Daily Active Users
- Reward-related Events
- XP-related Events
- Wallet and Withdrawal Monitoring
- Referral Performance

### Step 8 – Business Insights & Recommendations

Reviewed the analysis results and identified opportunities for improving user engagement, task completion, onboarding measurement, data quality, reward tracking, and future analytics capabilities.

---

## 6. Key Findings

The following results were calculated from the supplied simulated user behavior dataset.

| Metric | Result |
|---|---:|
| Total User Profiles | 1,000 |
| Total Sessions | 7,913 |
| Total Feature Events | 35,704 |
| Total Task Activity Records | 9,846 |
| Completed Task Records | 5,627 |
| Abandoned Task Records | 2,051 |
| Failed Task Records | 1,520 |
| Pending Task Records | 648 |
| Task Completion Rate | 57.15% |
| Verified Users | 851 |
| Users with Completed Onboarding | 685 |
| Reward-related Event Records | 18,834 |
| XP-related Event Records | 9,773 |
| Success Event Records | 14,428 |

### Feature Usage

The highest-volume feature event categories include:

- Watch Ads – 3,126 events
- Missions – 2,780 events
- Streak Rewards – 2,734 events
- CAPTCHA – 2,733 events
- Tap & Earn – 2,654 events

**Task Completion Rate Calculation:**

`Completed Task Activity Rows / Total Task Activity Rows × 100`

`5,627 / 9,846 × 100 = 57.15%`

These are simulated workbook-level observations. Reward-related event counts do not necessarily represent actual reward credits or successful withdrawals.

---

## 7. Key Business Insights

### User Engagement

Session and feature event data provide a foundation for understanding how users interact with the platform.

### Task Performance

The overall task completion rate in the simulated dataset is 57.15%. Abandoned, failed, and pending task records provide areas for further investigation.

### Feature Usage

Watch Ads has the highest event volume among the listed feature categories. This provides a starting point for evaluating feature engagement.

### Onboarding

The dataset contains 1,000 user profiles, of which 685 have completed onboarding. Onboarding completion can be monitored as an important activation metric.

### Data Quality

Data profiling and audit checks help identify missing values, duplicates, invalid values, and inconsistencies that may affect reporting accuracy.

### Analytics Readiness

Reliable reward, wallet, withdrawal, and referral reporting requires dedicated lifecycle and transaction records. Event counts alone should not be used as proof of completed business outcomes.

---

## 8. Business Recommendations

Based on the simulated dataset analysis, the following areas can be considered for further investigation:

1. **Improve Task Completion:** Investigate why tasks are abandoned or fail.
2. **Optimize Onboarding:** Understand where users drop off during onboarding.
3. **Monitor Feature Engagement:** Track feature-level activity and unique users.
4. **Improve Data Quality:** Establish consistent identifiers, validation rules, and missing-value checks.
5. **Track Reward Transactions:** Maintain a dedicated rewards ledger to distinguish reward-related events from actual credited rewards.
6. **Improve Withdrawal Tracking:** Capture withdrawal requests, statuses, completion timestamps, and failure reasons.
7. **Strengthen Referral Tracking:** Track referral registration, activation, and reward lifecycle events.
8. **Establish KPI Ownership:** Maintain consistent metric definitions and reporting responsibilities.
9. **Automate Data Quality Monitoring:** Introduce regular checks and alerts for important data issues.
10. **Validate Product Requirements:** Obtain product and engineering approval before implementing proposed tracking requirements.

These recommendations are areas for further investigation, not claims that the underlying causes have already been established.

---

## 9. Project Folder Structure

The repository is organised into separate folders to maintain clear documentation, analysis files, code, datasets, and final deliverables.

```text
VELOOP_Task01_GitHub_Ready/
│
├── 01_Executive_and_Audit/
│   ├── Executive_Summary
│   ├── Product_Data_Readiness_Audit
│   ├── Verification_and_Evidence_Matrix
│   └── Verification_Summary.csv
│
├── 02_Product_Analytics_Specifications/
│   ├── User_and_Account_Analytics
│   ├── Earning_and_Reward_Analytics
│   ├── Wallet_and_Withdrawal_Analytics
│   └── Referral_and_Engagement_Analytics
│
├── 03_Event_Tracking_and_Data_Dictionary/
│   ├── Event_Tracking_Plan
│   └── Data_Dictionary
│
├── 04_Data_Model_and_KPIs/
│   ├── Logical_Data_Model
│   ├── ER_Diagram
│   └── KPI_Catalogue
│
├── 05_Dashboard_and_Engineering/
│   ├── Dashboard_Blueprint
│   ├── Developer_Analytics_Handoff
│   └── Engineering_Acceptance_Criteria
│
├── 06_Governance_and_Implementation/
│   ├── Data_Quality_Control_Framework
│   ├── Privacy_and_Governance
│   ├── Analytics_Change_Management
│   ├── Assumption_and_Verification_Register
│   └── Implementation_Backlog
│
├── 07_Source_Data_SIMULATED/
│   ├── VELOOP_Simulated_User_Behavior_1000.xlsx
│   └── VELoop_Rewards_Data_01.xlsx
│
├── 08_Code/
│   ├── analyze_veloop.py
│   └── veloop_mysql_schema_analysis.sql
│
├── 09_Final_Submission/
│   ├── FINAL_CONSOLIDATED_REPORT.md
│   └── DELIVERABLE_REGISTER.xlsx
│
├── README.md
├── requirements.txt
├── .gitignore
└── LICENSE
```

---

## 10. Project Deliverables

| Deliverable | Description |
|---|---|
| Product Data Readiness Audit | Product analytics coverage and data gap identification |
| User & Account Analytics | User lifecycle and account tracking requirements |
| Earning & Reward Analytics | Reward activity and transaction requirements |
| Wallet & Withdrawal Analytics | Wallet and withdrawal tracking requirements |
| Referral & Engagement Analytics | Referral and engagement measurement |
| Event Tracking Plan | Proposed production event specifications |
| Data Dictionary | Field definitions, data types, and descriptions |
| Logical Data Model | Entity relationships and ER design |
| KPI Catalogue | Business and product performance metrics |
| Data Profiling | Dataset structure and field-level assessment |
| Data Quality Audit | Missing, duplicate, and invalid data checks |
| Data Quality Control Framework | Recommended validation and monitoring controls |
| Dashboard Blueprint | Dashboard pages and reporting requirements |
| Developer Handoff | Engineering implementation requirements |
| Pipeline Operating Model | Recommended data pipeline processes |
| Privacy & Governance Proposal | Data access, privacy, and governance recommendations |
| Analytics Change Management | Process for managing analytics changes |
| Assumption & Verification Register | Evidence, assumptions, and verification status |
| Implementation Backlog | Prioritised implementation activities |
| Final Consolidated Report | Complete project documentation |

---

## 11. How to Run the Python Analysis

### Requirements

Install the required Python libraries:

```bash
pip install -r requirements.txt
```

### Input Files

Place the two simulated Excel workbooks in the documented source-data folder or provide their correct file paths.

### Run the Script

```bash
python 08_Code/analyze_veloop.py --behavior "07_Source_Data_SIMULATED/VELOOP_Simulated_User_Behavior_1000.xlsx" --rewards "07_Source_Data_SIMULATED/VELoop_Rewards_Data_01.xlsx" --out output
```

The script generates profiling and audit outputs in the selected output folder.

---

## 12. SQL Database Setup

The SQL analysis includes database structures for:

- Users
- Sessions
- Feature Events
- Task Activity

The SQL queries support:

- User analysis
- Session analysis
- Feature event analysis
- Task performance analysis
- Data quality checks

**Note:** The database schema must be created and the Excel data must be imported before analysis queries can return meaningful results. The SQL schema alone does not populate the tables.

---

## 13. Power BI Dashboard Preparation

The Power BI preparation materials include:

- CSV files for importing data
- DAX measures
- Table relationship guidance
- Dashboard setup documentation
- Proposed dashboard requirements

The dashboard blueprint covers user analytics, engagement and task performance, feature usage, reward and XP activity, wallet and withdrawal monitoring, and referral performance.

**Note:** This project contains dashboard preparation materials and a dashboard blueprint, not a completed native `.pbix` file or a live Power BI Service deployment.

---

## 14. Verification & Evidence Status

To maintain analytical accuracy, project requirements are classified as:

| Status | Meaning |
|---|---|
| Confirmed from supplied evidence | Directly supported by the assignment brief or supplied workbook |
| Partially Supported | Related sample fields or events exist, but the complete lifecycle is not demonstrated |
| Proposed | Recommended analytics design or future tracking requirement |
| To Be Verified | Requires internal product, engineering, finance, or operations evidence |
| Not Evidenced | No reliable supporting evidence is present in the supplied materials |

The simulated workbooks confirm the presence of sample user, session, feature-event, and task records. However, reward-related event activity does not prove successful ledger credit, and the supplied materials do not establish actual production wallet, withdrawal, referral, or event instrumentation implementation.

Internal production verification requires appropriate VELOOP product documentation, database schema, API/event samples, or owner sign-off.

---

## 15. Limitations

1. All supplied datasets and calculated results are simulated/fictional.
2. The behavior and rewards workbooks represent separate simulated populations and should not be merged without validated matching identifiers.
3. Reward-related events do not necessarily confirm that rewards were credited.
4. Withdrawal and referral lifecycle metrics cannot be reliably calculated without dedicated transaction and referral records.
5. The task completion rate uses completed task activity rows divided by all task activity rows.
6. The analysis reflects only the fields and records available in the supplied datasets.
7. Proposed events and fields are not proof of production implementation.
8. A Power BI dashboard blueprint is not the same as a deployed live dashboard.

---

## 16. Future Scope

Potential improvements for future analysis include:

- Cohort retention analysis
- User activity segmentation
- Funnel and onboarding analysis
- Reward transaction reconciliation
- Withdrawal success rate analysis
- Referral conversion analysis
- Automated data quality monitoring
- Production event instrumentation
- Advanced Power BI dashboards
- Integration with verified production data sources

---

## 17. Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL, Excel, and Power BI preparation tools.

It covers data profiling, quality assessment, exploratory data analysis, KPI identification, SQL database design, product analytics requirements, event tracking, data modelling, dashboard planning, and business recommendations.

The project provides a structured foundation for understanding simulated user behavior, feature engagement, and task performance while documenting the data requirements needed for reliable future product analytics.

---




**Skills Demonstrated:** Python | Pandas | SQL | MySQL | Excel | Power BI | Data Cleaning | Data Profiling | Exploratory Data Analysis | Data Quality | KPI Analysis | Product Analytics | Data Modelling | Event Tracking | Business Intelligence | Business Insights
