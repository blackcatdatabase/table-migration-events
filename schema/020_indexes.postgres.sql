-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  migration_events
CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status);

CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at);
