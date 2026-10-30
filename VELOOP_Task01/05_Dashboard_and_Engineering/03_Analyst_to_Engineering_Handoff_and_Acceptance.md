# Analyst-to-Engineering Handoff & Verification Boundaries

## Ready for analyst handoff
This repository supplies proposed event names/triggers/properties, a data dictionary, logical entities/relationships, KPI definitions, data-quality checks, dashboard requirements, and a prioritised implementation backlog. These are ready for review and estimation by VELOOP product/engineering owners.

## Must be confirmed before production implementation
- Canonical user/account identifiers and identity merge rules.
- Task state machine and definition of successful completion.
- Reward eligibility, credit timing, reversal, expiry and ledger posting.
- XP earning/adjustment rules.
- Wallet balance calculation and transaction ledger semantics.
- Withdrawal approval, payout provider, failure, retry and reversal states.
- Referral attribution window, qualification rules, fraud exclusions and reward issue.
- Consent, retention, deletion, access controls and sensitive-data handling.
- Event delivery guarantees, idempotency key, event-time timezone and late-arrival policy.

## Acceptance criteria for each event
1. Event fires once at the defined business transition, not merely on a button click when backend outcome is required.
2. Required identifiers and properties are present and typed.
3. Event has `event_id`, `event_name`, `event_timestamp`, `user_id` where applicable, `session_id` where applicable, `schema_version`, and source/platform context.
4. Duplicate/retry behaviour is documented and tested.
5. Success/failure/reversal outcomes are distinguishable.
6. QA evidence includes sample payloads and expected downstream KPI impact.
7. Product owner approves business meaning; engineering owner approves implementation.

## Implementation boundary
No production credentials, internal repositories, app builds, API specifications, deployment environment or engineering sign-off were supplied. Therefore this project does not claim to have verified or deployed product instrumentation. The `To Be Verified` label is deliberate and protects the integrity of the analysis.
