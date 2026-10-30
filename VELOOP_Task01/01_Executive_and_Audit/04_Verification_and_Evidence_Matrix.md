# Verification & Evidence Matrix

## Verification method
The available evidence for this project is the assignment brief and two simulated Excel workbooks. The workbooks demonstrate sample data structures and synthetic records; they do not prove that corresponding features, APIs, event collectors or backend workflows exist in VELOOP production.

### Status definitions
- **Confirmed from supplied evidence:** directly visible in the assignment brief or supplied workbook.
- **Partially supported:** a related sample field/event exists, but the full business lifecycle or outcome is not demonstrated.
- **Proposed:** an analytics requirement designed for future implementation or standardisation.
- **To Be Verified:** requires product owner, engineering, finance or operations evidence unavailable in the supplied materials.
- **Not evidenced:** no reliable source in the supplied materials supports the claim.

## Requirement-level assessment

| Domain | What the supplied evidence supports | Status | What would close verification |
|---|---|---|---|
| Product context | Assignment describes a developing rewards/engagement product and asks for analytics readiness work | Confirmed from brief | Product owner confirms current roadmap/scope |
| User/account | Simulated user profile data and account-related fields exist in behavior workbook | Confirmed for sample only | Production user schema, lifecycle definitions, identity rules |
| Onboarding | Sample includes onboarding-related status/fields | Confirmed for sample only | App flow, production event export, onboarding completion rule |
| Sessions | Session records are present in behavior workbook | Confirmed for sample only | Production sessionisation definition and event source |
| Feature usage | Feature event and feature usage records exist in simulated workbook | Confirmed for sample only | Event taxonomy and deployed instrumentation audit |
| Tasks | Task activity and task status rows exist; sample contains completed, abandoned, failed and pending statuses | Confirmed for sample only | Product task state machine and backend task source |
| Reward activity | Reward-related event rows/flags exist in simulated behavior data | Partially supported | Immutable reward ledger with credit, reversal, expiry and balance impact |
| XP | XP-related sample events exist | Confirmed for sample only | XP ledger, earning rules, adjustments and expiry policy |
| Wallet balance | Wallet analytics requirements can be specified | Proposed | Production wallet schema and reconciliation controls |
| Withdrawals | No authoritative withdrawal lifecycle table is evidenced in the supplied behavior data | To Be Verified | Withdrawal request, review, payout, failure and reversal tables |
| Referrals | Referral analytics can be specified, but a complete referral attribution/conversion lifecycle is not evidenced | To Be Verified | Referrer/referee IDs, invite, signup, qualification, reward and fraud outcomes |
| CAPTCHA / anti-abuse | CAPTCHA appears as a feature/activity category in sample data | Confirmed for sample only | Production anti-abuse event definitions and security review |
| Acquisition | Sample acquisition/source attributes exist | Confirmed for sample only | Production attribution SDK, channel taxonomy and consent |
| Dashboard | Assignment requests a dashboard blueprint | Confirmed from brief | BI owner validates requirements; PBIX/service deployment is separate |
| Data pipeline | Pipeline operating model is a proposal | Proposed | Platform architecture, source systems, orchestration and SLAs |
| Privacy/governance | Governance proposal is an analyst recommendation | Proposed | Legal/privacy/security review and approved retention/access policy |
| Production event implementation | No production event export or instrumentation evidence supplied | To Be Verified | Engineering event catalogue, QA logs and production payload samples |
| Production performance | Simulated workbooks only; no production extract supplied | Not evidenced | Approved production dataset and metric sign-off |

## Critical interpretation controls

1. A row labelled `Completed` in a simulated task table is evidence about that row, not proof of production task completion.
2. A reward-related event flag is not equivalent to a successful ledger credit.
3. A wallet balance snapshot is not a substitute for a transaction ledger and reconciliation.
4. Referral invite counts alone do not prove referred-user qualification or reward issuance.
5. A proposed event name or field in this repository is a design recommendation, not evidence that it is instrumented.
6. Keep the two simulated workbook populations separate unless a verified crosswalk and compatible population definition are provided.

## Sign-off checklist for VELOOP owners

| Owner | Required sign-off |
|---|---|
| Product | Feature scope, task lifecycle, onboarding definition, reward eligibility and referral rules |
| Engineering | Event implementation, payload contracts, identifiers, backend state transitions, idempotency |
| Finance / Operations | Wallet ledger, payout states, reversals, reconciliation and settlement definitions |
| Data / BI | KPI formulas, timezone, freshness SLA, dimensional definitions and dashboard access |
| Privacy / Security | Consent, data minimisation, retention, access, deletion and sensitive-field controls |

**Conclusion:** The analyst-side specification and evidence review can be completed from the provided material. Claims of current production implementation cannot be honestly verified without VELOOP internal evidence and owner sign-off.
