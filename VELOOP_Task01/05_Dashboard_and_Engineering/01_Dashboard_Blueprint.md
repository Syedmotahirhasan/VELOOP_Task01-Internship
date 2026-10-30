# Dashboard Blueprint — specification, not deployment

| Dashboard | Metrics / visuals | Source | Visualization | Filters | Decision |
|---|---|---|---|---|---|
| Executive Overview | DAU/WAU/MAU, task completion, reward credits | Event/task/ledger marts | KPI cards + trends | Date, platform | Overall engagement and operations |
| User Analytics | Registrations, acquisition, onboarding funnel, lifecycle | User + onboarding events | Bars, funnel, cohort | Source, platform, date | Acquisition and activation |
| Engagement | Feature adoption, task starts/completions, repeat usage | Event + task marts | Bar, trend, stacked status | Feature/category/date | Improve engagement |
| Rewards | Pending/credited/reversed transactions by unit/source | Authoritative ledger | Trend + table | Unit, source, date | Reconcile rewards |
| Wallet | Credits, debits, net movement, reversals | Wallet ledger | Waterfall + trend | Unit, date | Reconcile balance |
| Withdrawals | Request queue, statuses, processing duration | Withdrawal state history | KPI + aging table | Method/status | Operational capacity |
| Referrals | Created → registered → activated → converted | Referral fact | Funnel + cohort | Source/cohort | Referral quality |

Every visual should state calculation, source, filters, dimensions, date range, refresh frequency, business question and decision supported. Show data freshness and environment label. Assignment requests a blueprint, not a production deployment. A live Power BI Service publish requires tenant/workspace access, approved data source, gateway/connectivity, credentials and permission not supplied here.
