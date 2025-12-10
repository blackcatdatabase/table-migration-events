# migration_events

Records describing migrations between schema versions.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| error | TEXT | YES |  | Failure message, if any. |
| finished_at | DATETIME(6) | YES |  | Completion timestamp (UTC). |
| from_version | VARCHAR(64) | YES |  | Version migrated from. |
| id | BIGINT | NO |  | Surrogate primary key. |
| meta | mysql: JSON / postgres: JSONB | YES |  | JSON metadata or logs. |
| started_at | DATETIME(6) | YES |  | Migration start timestamp (UTC). |
| status | mysql: ENUM('pending','running','done','failed','cancelled') / postgres: TEXT | NO | pending | Migration status. (enum: pending, running, done, failed, cancelled) |
| system_name | VARCHAR(120) | NO |  | System/component undergoing migration. |
| to_version | VARCHAR(64) | NO |  | Target version. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_mig_started | started_at | INDEX idx_mig_started       (started_at) |
| idx_mig_system_status | system_name,status | INDEX idx_mig_system_status (system_name, status) |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_mig_started | started_at | CREATE INDEX IF NOT EXISTS idx_mig_started ON migration_events (started_at) |
| idx_mig_system_status | system_name,status | CREATE INDEX IF NOT EXISTS idx_mig_system_status ON migration_events (system_name, status) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_migration_events | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_migration_events | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
