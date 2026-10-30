# Referral & Engagement Analytics Specification

Referral stages: created → invitee registered → invitee activated → referral converted/qualified. Registration alone is not conversion.

Proposed referral fields: `referral_id`, `referrer_user_id`, `referred_user_id`, `created_at`, `registered_at`, `activated_at`, `converted_at`, `status`, `source`, `qualification_rule_version`. Ensure self-referrals and duplicate attribution are handled by documented business rules.

Engagement measures: daily active users (qualifying activity definition required), returning users (active on a later date after first activity), feature adoption (unique users with qualifying feature event / eligible users), repeat usage (users with 2+ qualifying feature uses in window), task starts/completions and frequency. Define timezone and qualifying events before publishing.
