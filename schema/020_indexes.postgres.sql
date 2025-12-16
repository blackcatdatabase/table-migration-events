-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  migration_events

CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status);

CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at);
