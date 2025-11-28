-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  migration_events

CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status);

CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at);
