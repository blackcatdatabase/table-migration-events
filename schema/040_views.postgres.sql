-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
