<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – migration_events

Records describing migrations between schema versions.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| system_name | VARCHAR(120) | NO | — | System/component undergoing migration. |  |
| from_version | VARCHAR(64) | YES | — | Version migrated from. |  |
| to_version | VARCHAR(64) | NO | — | Target version. |  |
| status | TEXT | NO | 'pending' | Migration status. | enum: pending, running, done, failed, cancelled |
| started_at | TIMESTAMPTZ(6) | YES | — | Migration start timestamp (UTC). |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Completion timestamp (UTC). |  |
| error | TEXT | YES | — | Failure message, if any. |  |
| meta | JSONB | YES | — | JSON metadata or logs. |  |