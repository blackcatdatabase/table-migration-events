-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  migration_events

CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status);

CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at);
