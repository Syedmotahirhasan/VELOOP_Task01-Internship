# Developer Analytics Handoff

## Common event envelope
Required: `event_id`, `event_name`, `event_timestamp_utc`, `schema_version`, `source`, `environment`; `user_id` required for authenticated activity; `session_id` nullable where not applicable. Include typed `properties`, optional `correlation_id`. Do not include secrets or unnecessary PII.

## task_completed
Trigger only after backend validation. Required payload: event_id, user_id, task_id, activity_id, event_timestamp_utc, task_category, completion_status, validation_status, schema_version. Deduplicate on event_id and idempotency key `(user_id, activity_id, task_completed)`. Acceptance: exactly one canonical completion; invalid attempts remain distinguishable; UTC timestamp and valid references.

## reward_credited
Trigger only when ledger credit commits. Required: event_id, transaction_id, user_id, amount, unit, status, created_at UTC, source, reference_id, idempotency_key. Acceptance: event reconciles to ledger row; retry cannot double-credit; reversal references original transaction.

## withdrawal_completed
Trigger only on authoritative final confirmation. Required: withdrawal_id, user_id, amount, unit, method, requested_at, final_at, status, provider_reference. Acceptance: valid state transition, idempotent provider callbacks and preserved rejected/reversed states.

## General acceptance
Validate schema, required fields, enum values, timestamps, referential integrity, deduplication, schema version and event freshness. Quarantine malformed records with owner-visible reason.
