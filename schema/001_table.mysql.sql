-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  migration_events

CREATE TABLE IF NOT EXISTS migration_events (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  system_name VARCHAR(120) NOT NULL,
  from_version VARCHAR(64) NULL,
  to_version VARCHAR(64) NOT NULL,
  status ENUM('pending','running','done','failed','cancelled') NOT NULL DEFAULT 'pending',
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  error TEXT NULL,
  meta JSON NULL,
  INDEX idx_mig_system_status (system_name, status),
  INDEX idx_mig_started       (started_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
