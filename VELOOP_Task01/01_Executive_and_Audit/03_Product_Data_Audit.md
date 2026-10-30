# Product Data Readiness Audit

| Product area | Feature / process | User action | System action / outcome | Data needed | Business question | Status | Priority |
|---|---|---|---|---|---|---|---|
| Account | Registration | Register | Account created | user_id, registered_at, source, platform | How many registrations and from where? | Proposed | Critical |
| Account | Login/session | Log in/out | Session opened/closed | session_id, user_id, timestamps | How active are users? | Simulated session fields available; implementation unverified | High |
| Onboarding | Onboarding | Start/complete steps | Milestone state updated | milestone, timestamp, status | Where do users drop off? | Simulated status available; event coverage unverified | High |
| Earning | Watch ads | View/start/finish ad | Partner callback and validation | placement, provider, callback, status | Which ad activity validates? | Proposed / third-party dependent | High |
| Earning | Tap & Earn | Start and perform action | Activity validated | task/activity ID, status, timestamps | What drives task completion? | Simulated feature/task activity | High |
| Tasks | Missions/tasks | View/open/start/complete | Validate and set outcome | task_id, activity_id, state history | Where is task funnel leakage? | Simulated task activity; lifecycle gaps | Critical |
| Rewards | Credit/pending/reverse | User may trigger activity | Backend posts ledger entry | transaction_id, amount, unit, status, reference | What was actually credited? | Proposed; no authoritative ledger supplied | Critical |
| Wallet | Balance/transactions | View wallet | Balance derived from ledger | ledger entries, balance snapshot | Can balance be reconciled? | To Be Verified | Critical |
| Withdrawals | Request/process | Request payout | Approve/reject/complete/reverse | withdrawal_id, amount, method, states, timestamps | How many complete and how long? | To Be Verified | Critical |
| Referrals | Invite/activate | Share invite / invitee registers | Referral attributed and qualified | referral_id, referrer, invitee, lifecycle | Which referrals convert? | To Be Verified | High |
| Engagement | Daily reward/streak | Claim / maintain streak | Claim and streak state recorded | event, date, streak state | How repeat usage behaves? | Daily activity simulated | High |
| Support | Help center | Search / open article / contact support | Search result / ticket state | article_id, search term category, ticket_id | What issues block users? | Proposed | Medium |
