POWER BI BUILD GUIDE (native .pbix must be saved in Power BI Desktop)
1. Open Power BI Desktop -> Get Data -> Text/CSV.
2. Import CSV_Import/Users.csv, Sessions.csv, FeatureEvents.csv, DailyActivity.csv, TaskActivity.csv, FeatureUsage.csv, Milestones.csv.
3. Do NOT import RewardsWorkbook_Users_Clean_SEPARATE.csv into the same model unless the report labels it as a separate dataset/population.
4. Set registration_datetime, session_start, session_end, event_datetime, activity_date and task timestamps to Date/Time types.
5. Create relationships:
   Users[user_id] 1:* Sessions[user_id]
   Users[user_id] 1:* FeatureEvents[user_id]
   Users[user_id] 1:* DailyActivity[user_id]
   Users[user_id] 1:* TaskActivity[user_id]
   Sessions[session_id] 1:* FeatureEvents[session_id] only after validating session_id uniqueness.
6. Add measures from DAX/Measures_and_Model_Notes.dax.
7. Suggested report pages:
   Executive Overview: User Profiles, Sessions, Feature Events, Task Completion Rate; event trend; task status mix.
   User Analytics: acquisition source, platform, onboarding/account status.
   Engagement: feature event volume by feature, events over time, sessions per user.
   Task Analytics: task completion rate by category, status distribution, failure reasons.
   Data Quality: missingness, duplicate IDs, orphan keys, data profile.
8. Add visible footer: “SIMULATED DATA — NOT ACTUAL VELOOP PRODUCTION PERFORMANCE”.
9. Save as 05_PowerBI/VELOOP_Analytics_Dashboard.pbix.
Important: this package cannot create a genuine PBIX binary outside Power BI Desktop. The supplied import files and DAX are ready for that final save step.
