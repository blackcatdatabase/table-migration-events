-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  migration_events

-- Contract view for [migration_events]
CREATE OR REPLACE VIEW vw_migration_events AS
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
