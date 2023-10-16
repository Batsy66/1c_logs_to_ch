CREATE TABLE IF NOT EXISTS log_storage.import_erorrs
(
       timestamp DateTime,
       source_type String,
       host String,
       message String,
       err String
) ENGINE = MergeTree()
PARTITION BY toYYYYMM(timestamp)
ORDER BY (timestamp, source_type, host);