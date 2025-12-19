-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  migration_events

-- Contract view for [migration_events]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_migration_events AS
SELECT
  id,
  system_name,
  from_version,
  to_version,
  status,
  started_at,
  finished_at,
  error,
  meta
FROM migration_events;
