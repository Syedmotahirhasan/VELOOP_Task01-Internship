-- VELOOP Task 01: SQLite-compatible starter schema.
-- Supplied datasets are SIMULATED. This schema is a proposed analytical model.
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS users (
  user_id TEXT PRIMARY KEY, registration_datetime TEXT, acquisition_source TEXT,
  primary_device TEXT, platform TEXT, account_status TEXT,
  verification_status TEXT, onboarding_status TEXT
);
CREATE TABLE IF NOT EXISTS sessions (
  session_id TEXT PRIMARY KEY, user_id TEXT NOT NULL, session_start TEXT, session_end TEXT,
  session_duration_seconds INTEGER, device TEXT, platform TEXT, session_status TEXT,
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE IF NOT EXISTS feature_events (
  event_id TEXT PRIMARY KEY, user_id TEXT NOT NULL, session_id TEXT, event_datetime TEXT,
  feature_name TEXT, event_name TEXT, event_status TEXT, device TEXT, platform TEXT,
  reward_related_flag TEXT, xp_related_flag TEXT,
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(session_id) REFERENCES sessions(session_id)
);
CREATE TABLE IF NOT EXISTS task_activity (
  activity_id TEXT PRIMARY KEY, user_id TEXT NOT NULL, task_id TEXT, task_category TEXT,
  task_viewed_at TEXT, task_started_at TEXT, task_completed_at TEXT, task_status TEXT,
  failure_reason TEXT, reward_status TEXT, session_id TEXT,
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-- Q1. User profile population (simulated)
SELECT COUNT(*) AS user_profiles, COUNT(DISTINCT user_id) AS unique_user_ids FROM users;

-- Q2. Task outcomes and completion rate
SELECT LOWER(TRIM(task_status)) AS task_status, COUNT(*) AS records,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM task_activity), 2) AS pct_of_records
FROM task_activity GROUP BY LOWER(TRIM(task_status)) ORDER BY records DESC;

-- Q3. Task completion rate by category
SELECT task_category, COUNT(*) AS attempts,
       SUM(CASE WHEN LOWER(TRIM(task_status))='completed' THEN 1 ELSE 0 END) AS completed,
       ROUND(100.0 * SUM(CASE WHEN LOWER(TRIM(task_status))='completed' THEN 1 ELSE 0 END)
       / NULLIF(COUNT(*),0),2) AS completion_rate_pct
FROM task_activity GROUP BY task_category ORDER BY completion_rate_pct DESC;

-- Q4. Feature event volume
SELECT feature_name, COUNT(*) AS event_count, COUNT(DISTINCT user_id) AS unique_users
FROM feature_events GROUP BY feature_name ORDER BY event_count DESC;

-- Q5. Event user references without matching user
SELECT e.user_id, COUNT(*) AS event_rows
FROM feature_events e LEFT JOIN users u ON e.user_id=u.user_id
WHERE u.user_id IS NULL GROUP BY e.user_id;

-- Q6. Duplicate event IDs (should return no rows when data is valid)
SELECT event_id, COUNT(*) AS n FROM feature_events
GROUP BY event_id HAVING COUNT(*) > 1;

-- Q7. Reward-related events are not the same as reward ledger credits
SELECT reward_related_flag, COUNT(*) AS events
FROM feature_events GROUP BY reward_related_flag;

-- Proposed future tables needed for reliable production KPIs:
-- rewards_ledger(transaction_id PK, user_id FK, amount, unit, status, source, created_at, reference_id)
-- withdrawals(withdrawal_id PK, user_id FK, requested_amount, method, status, requested_at, final_at, reason_category)
-- referrals(referral_id PK, referrer_user_id FK, referred_user_id FK, created_at, registered_at, activated_at, status)
