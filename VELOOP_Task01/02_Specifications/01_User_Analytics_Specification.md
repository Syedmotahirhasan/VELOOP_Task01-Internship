# User & Account Analytics Specification

## Identity requirements
- `user_id`: stable, opaque, non-recycled account identifier; primary key for user dimension. Avoid email as a key.
- `event_id`: unique immutable ID for each event; enables deduplication.
- `session_id`: unique session instance ID; connects events to a visit when applicable.
- `transaction_id`: unique ledger operation ID; required for reconciliation and idempotency.

## User lifecycle fields
| Field | Type | Required | Purpose | Source | Validation | Status |
|---|---|---|---|---|---|---|
| user_id | string | Yes | Stable identity | Account service | Non-empty, unique | Proposed |
| registered_at | timestamp UTC | Yes | Registration time | Backend | ISO-8601 UTC | Proposed |
| acquisition_source | string/enum | Recommended | Acquisition attribution | Signup flow | Approved enum / unknown | Simulated field exists |
| device_type | enum | Recommended | Device breakdown | Client | Approved values | Simulated field exists |
| platform | enum | Recommended | Platform breakdown | Client | Approved values | Simulated field exists |
| account_status | enum | Yes | Current lifecycle state | Backend | Approved state machine | Simulated field exists |
| verification_status | enum | Recommended | Verification state | Backend | Approved values | Simulated field exists |
| onboarding_status | enum | Recommended | Onboarding state | Backend | Approved values | Simulated field exists |
| last_activity_at | timestamp UTC | Recommended | Recency | Analytics layer | Derived from qualifying event | Proposed |
| consent_status | enum | If applicable | Consent governance | Consent service | Auditable timestamped changes | Rewards workbook only; separate population |

Do not collect unnecessary personal data. Use pseudonymous IDs in analytics. Restrict direct identifiers such as name/email to approved operational systems.
