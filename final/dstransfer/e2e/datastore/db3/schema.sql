DROP TABLE IF EXISTS quiz;

CREATE TABLE quiz (
  id       INT AUTO_INCREMENT PRIMARY KEY,
  name     VARCHAR(255) DEFAULT NULL,
  UNIQUE(name)
);


DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  name       VARCHAR(255) NOT NULL,
  perf_rank INT,
  perf_score DECIMAL(7, 2),
  quiz TEXT,
  visited TIMESTAMP
);



DROP TABLE IF EXISTS transfered_users;

CREATE TABLE transfered_users (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  name       VARCHAR(255) DEFAULT NULL,
  perf_rank INT,
  perf_score DECIMAL(7, 2),
  quiz TEXT,
  visited TIMESTAMP
);


