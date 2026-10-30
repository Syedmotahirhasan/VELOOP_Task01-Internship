# Earning & Reward Analytics Specification

## Lifecycle
Discovery → Start → Completion → Validation → Reward pending/credited/reversed. Treat each stage as a distinct event/state. A completed activity is not proof of a reward credit.

## Task-level required fields
`activity_id`, `task_id`, `task_type/category`, `user_id`, `started_at`, `completed_at`, `status`, `validation_status`, `reward_amount`, `reward_unit`, `reward_transaction_id`, `source/provider`, `failure_reason_category`. Reward fields become authoritative only when linked to a ledger transaction.

## Failure classification proposal
`user_abandoned`, `validation_failed`, `provider_callback_missing`, `tracking_error`, `system_error`, `expired`, `unknown`. These are proposed categories, not asserted existing internal codes. Preserve raw provider/error code separately where permitted.

## Third-party dependencies
For ads, surveys, offers and games capture provider, placement/offer ID, click/reference ID, callback received timestamp, callback status, validation result and reconciliation status. Provider callbacks may be delayed, duplicated or unavailable; implement idempotent processing and reconciliation.

## Reward event rules
- `reward_pending`: created but not final.
- `reward_credited`: ledger confirms posted credit.
- `reward_reversed`: compensating entry references original transaction.
- `reward_corrected`: adjustment with reason and reference.

Source dataset contains reward-related event flags, not an authoritative credit ledger.
