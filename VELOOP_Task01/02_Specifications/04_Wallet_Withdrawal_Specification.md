# Wallet & Withdrawal Analytics Specification

## Wallet ledger model (proposed)
Fields: `transaction_id` (PK), `user_id` (FK), `occurred_at`, `transaction_type` (credit/redemption/reversal/adjustment), `amount` (decimal, non-negative magnitude), `unit`, `status`, `source`, `reference_id`, `reversal_of_transaction_id`, `idempotency_key`, `created_at`. Store signed direction or debit/credit explicitly and define one convention. Never infer a credit from a feature event.

## Withdrawal lifecycle
`requested` → `under_review` / `processing` → `completed`; alternatives: `rejected`, `cancelled` (if supported), `reversed`. Keep state history rather than overwriting the only status.

Required: `withdrawal_id`, `user_id`, `requested_amount`, `unit`, `method`, `requested_at`, `processing_at`, `final_at`, `status`, `reason_category`, `provider_reference`, `updated_at`.

## KPI definitions
- Requests = distinct withdrawal IDs created in period.
- Completed = distinct IDs with final completed state in period.
- Pending queue = distinct IDs whose latest state is requested/review/processing at as-of time.
- Completion rate = completed requests / eligible requests in a defined request cohort; specify cohort and maturity window.
- Processing time = completed_at − requested_at; report median and percentiles, not only average.
- Withdrawal volume = sum requested or completed amount, clearly label which.

All are proposed; source workbook does not provide an authoritative withdrawal lifecycle table.
