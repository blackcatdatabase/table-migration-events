-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  migration_events

CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status);

CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at);
