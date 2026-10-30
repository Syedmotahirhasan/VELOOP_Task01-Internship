# Logical Data Model & ER Diagram

```mermaid
erDiagram
 USER ||--o{ SESSION : has
 USER ||--o{ FEATURE_EVENT : generates
 SESSION ||--o{ FEATURE_EVENT : contains
 USER ||--o{ TASK_ACTIVITY : performs
 USER ||--o{ DAILY_ACTIVITY : summarized_as
 USER ||--o{ REWARD_LEDGER : receives
 USER ||--o{ WITHDRAWAL : requests
 USER ||--o{ REFERRAL : refers
 TASK ||--o{ TASK_ACTIVITY : instance_of
 REWARD_LEDGER ||--o| REWARD_LEDGER : reverses
 USER { string user_id PK }
 SESSION { string session_id PK string user_id FK }
 FEATURE_EVENT { string event_id PK string user_id FK string session_id FK }
 TASK { string task_id PK }
 TASK_ACTIVITY { string activity_id PK string user_id FK string task_id FK }
 DAILY_ACTIVITY { string user_id FK date activity_date }
 REWARD_LEDGER { string transaction_id PK string user_id FK }
 WITHDRAWAL { string withdrawal_id PK string user_id FK }
 REFERRAL { string referral_id PK string referrer_user_id FK string referred_user_id FK }
```

User-to-session/event/task/reward/withdrawal are one-to-many. Session-to-event is one-to-many. Task-to-task activity is one-to-many. Referral has two role-playing user references. Reward reversal self-references original transaction. Daily activity grain is one user per date. Proposed entities require engineering validation.
