# VELOOP – Data Analyst Internship Project | Task 01

**An End-to-End Data Analytics Project Using Python, SQL, Excel & Power BI**

---

## 1. Project Overview

This project was completed as part of the VELOOP Data Analyst Internship – Task 01.

The main objective of this project is to analyze simulated user behavior, engagement, feature interactions, task activities, and rewards-related events to identify meaningful patterns and generate actionable business insights.

The project follows an end-to-end data analytics workflow, including:

- Data understanding and exploration
- Data profiling and quality assessment
- Data cleaning and validation
- SQL database design and querying
- Exploratory data analysis (EDA)
- KPI identification and analysis
- Dashboard preparation
- Business insights and recommendations

The analysis uses Python, SQL, Microsoft Excel, and Power BI.

**Important:** All datasets used in this project are simulated/fictional. The findings should not be interpreted as actual production VELOOP business performance.

---

## 2. Project Objectives

The key objectives of this project are:

1. Understand the structure and quality of the available datasets.
2. Analyze user profiles and acquisition sources.
3. Evaluate user engagement and session activity.
4. Understand feature usage and interaction patterns.
5. Measure task completion, failure, and abandonment.
6. Analyze rewards-related and XP-related events.
7. Identify data quality issues and reporting limitations.
8. Prepare KPIs and business recommendations.
9. Develop a foundation for interactive Power BI reporting.

---

## 3. Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data profiling, analysis, and automation |
| Pandas | Data manipulation and analysis |
| SQL | Database design, querying, and validation |
| Microsoft Excel | Data exploration, reporting, and KPI documentation |
| Power BI | Dashboard development and visualization |
| Jupyter Notebook | Python execution and analysis |
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

Additional sheets are included in the source workbook and are covered by the profiling process.

### B. Rewards Dataset

The second workbook contains rewards-related data and a `Users_Messy_Audit` sheet used for data quality assessment.

The messy audit sheet is analyzed separately. It is not automatically merged with the user behavior dataset because the datasets represent separate simulated populations.

---

## 5. Project Workflow

### Step 1 – Data Understanding

- Reviewed the supplied Excel workbooks.
- Identified available worksheets and columns.
- Examined dataset structure and record counts.
- Understood the purpose of each dataset.

### Step 2 – Data Profiling

Used Python and Pandas to examine:

- Total rows and columns
- Duplicate records
- Missing values
- Columns containing missing values
- Dataset structure

Generated profiling output:

`dataset_profile.csv`

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

The messy audit dataset was assessed separately.

### Step 4 – Exploratory Data Analysis

Analyzed different aspects of simulated user behavior:

- User profiles
- User acquisition sources
- Account and onboarding status
- Session activity
- Feature usage
- Task activity and completion
- Reward-related events
- XP-related events

### Step 5 – SQL Analysis

Designed database tables for:

- Users
- Sessions
- Feature Events
- Task Activity

Prepared SQL queries for:

- Total users
- Task status distribution
- Task completion rate by category
- Feature event volume
- Duplicate record checks
- Missing data checks
- Failed tasks by category
- Average session duration
- User acquisition analysis

Additional tables for rewards, withdrawals, and referrals are documented as proposed future data requirements.

### Step 6 – Excel Analysis

Prepared an Excel analysis workbook containing:

- Findings
- Dataset profiling
- Data quality audit
- KPI catalogue
- Data dictionary
- Event tracking plan

### Step 7 – Power BI Dashboard Preparation

Prepared CSV files, DAX measures, relationship guidance, and dashboard setup documentation for Power BI.

The dashboard analysis covers:

- User Analytics
- Engagement & Tasks
- Task Completion
- Task Status Distribution
- Daily Active Users
- Reward-related Events
- XP-related Events

### Step 8 – Business Insights

Reviewed the analysis results and identified areas where additional tracking and better data availability could improve business reporting.

---

## 6. Key Findings

The following results were calculated from the supplied simulated datasets.

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

### Feature Usage

The highest-volume feature event categories include:

- Watch Ads – 3,126 events
- Missions – 2,780 events
- Streak Rewards – 2,734 events
- CAPTCHA – 2,733 events
- Tap & Earn – 2,654 events

### Rewards & XP Activity

- Reward-related event records: 18,834
- XP-related event records: 9,773
- Success event records: 14,428

These are event-record counts, not confirmed reward credits or successful withdrawals.

---

## 7. Key Business Insights

### User Engagement

User session and feature event data provide a foundation for understanding how users interact with the platform.

### Task Performance

The overall task completion rate is 57.15%.

The remaining task records include abandoned, failed, and pending activities. These categories can help identify opportunities to improve the user task experience.

### Feature Usage

Watch Ads has the highest event volume among the listed features.

This provides a useful starting point for evaluating feature engagement.

### Onboarding

The dataset contains 1,000 user profiles, of which 685 have completed onboarding.

Onboarding completion can be monitored as an important user activation metric.

### Data Quality

Data profiling and audit checks help identify missing values, duplicates, and inconsistencies that may affect reporting accuracy.

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

These are recommendations for further investigation, not claims that the underlying causes have already been established.

---

## 9. Project Folder Structure

```text
VELOOP-Data-Analyst-Project/
│
├── 01_Report/
│   └── VELOOP_Task01_Final_Analyst_Report.pdf
│
├── 02_Excel/
│   └── VELOOP_Analyst_Workbook.xlsx
│
├── 03_Python/
│   └── analyze_veloop.py
│
├── 04_SQL/
│   └── veloop_schema_and_analysis.sql
│
├── 05_PowerBI/
│   ├── CSV_Import/
│   ├── DAX_Measures
│   ├── Relationships
│   └── Setup_Guide
│
└── 06_Documentation/
    └── README_and_Business_QA.md
```

---

## 10. How to Run the Python Analysis

### Requirements

Install the required Python libraries:

```bash
pip install pandas openpyxl
```

### Input Files

Place the two Excel workbooks in the same working directory as the Python script:

- `VELOOP_Simulated_User_Behavior_1000.xlsx`
- `VELoop_Rewards_Data_01.xlsx`

### Run the Script

For the command-line version of the script:

```bash
python analyze_veloop.py --behavior "VELOOP_Simulated_User_Behavior_1000.xlsx" --rewards "VELoop_Rewards_Data_01.xlsx" --out output
```

The script generates the following output files:

```text
output/
│
├── dataset_profile.csv
├── key_findings.csv
└── messy_audit_checks.csv
```

If using the notebook-compatible version, configure the input filenames in the script before execution.

---

## 11. SQL Database Setup

The SQL analysis includes database tables for:

- Users
- Sessions
- Feature Events
- Task Activity

The database can be created using MySQL Workbench after selecting the appropriate database schema and using MySQL-compatible SQL statements.

The SQL queries are intended to support:

- User analysis
- Session analysis
- Feature event analysis
- Task performance analysis
- Data quality checks

**Note:** The database schema must be created and the Excel data must be imported before the analysis queries can return meaningful results. The SQL schema alone does not populate the tables.

---

## 12. Power BI Dashboard

The Power BI preparation folder includes:

- CSV files for importing data
- DAX measures
- Table relationship guidance
- Dashboard setup instructions

The dashboard can be developed in Power BI Desktop.

**Note:** The supplied project package contains Power BI preparation files and setup guidance, not a completed native `.pbix` dashboard file.

---

## 13. Limitations

The following limitations should be considered when interpreting the results:

1. All data are simulated and fictional.
2. The behavior and rewards workbooks represent separate simulated populations and should not be merged without validated matching identifiers.
3. Reward-related events do not necessarily confirm that rewards were credited.
4. Withdrawal and referral lifecycle metrics cannot be reliably calculated without dedicated transaction and referral records.
5. The task completion rate uses completed task activity rows divided by all task activity rows.
6. The analysis reflects only the fields and records available in the supplied datasets.

---

## 14. Future Scope

Potential improvements for future analysis include:

- Cohort retention analysis
- User activity segmentation
- Funnel and onboarding analysis
- Reward transaction reconciliation
- Withdrawal success rate analysis
- Referral conversion analysis
- Automated data quality monitoring
- Advanced Power BI dashboards

---

## 15. Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL, Excel, and Power BI preparation tools.

It covers data profiling, quality assessment, exploratory analysis, KPI identification, SQL database design, and business recommendations.

The project provides a structured foundation for understanding user behavior, feature engagement, and task performance using simulated data.

---

## 16. Disclaimer

This project was developed for educational and internship portfolio purposes.

All datasets and calculated results are simulated/fictional and must not be interpreted as actual VELOOP company performance, financial results, or production business metrics.

---

## Author

**Data Analyst Internship – Task 01**

**Skills Demonstrated:** Python | SQL | Excel | Power BI | Data Cleaning | Data Analysis | Data Visualization | Business Insights

