CREATE OR REPLACE TABLE quiz (
  id       INT64 NOT NULL,
  name     STRING,
  modified TIMESTAMP
);


CREATE OR REPLACE TABLE users (
  id         INT64 NOT NULL,
  name       STRING NOT NULL,
  visited    TIMESTAMP,
  perf       STRUCT<
        rank INT64,
        score FLOAT64
  >,
  quiz ARRAY<STRUCT<
    key string,
    value STRUCT<
      id INT64,
      score INT64,
      taken TIMESTAMP
    >>>
);
