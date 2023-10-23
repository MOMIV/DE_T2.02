CREATE TABLE IF NOT EXISTS vacancy_m
(
Ids Nullable(Int64),
Employer Nullable(String),
Name Nullable(String),
Salary Bool,
"From" Nullable(Float32),
"To" Nullable(Float32),
Experience Nullable(String),
Schedule Nullable(String),
Keys Nullable(String),
Description Nullable(String),
Area Nullable(String),
"Published at" Nullable(String)
 )
ENGINE = MergeTree
PARTITION BY (Area, Salary)
ORDER BY Ids  SETTINGS allow_nullable_key = 1;

CREATE TABLE IF NOT EXISTS vacancy_sp
(
Ids Nullable(Int64),
Employer Nullable(String),
Name Nullable(String),
Salary Bool,
"From" Nullable(Float32),
"To" Nullable(Float32),
Experience Nullable(String),
Schedule Nullable(String),
Keys Nullable(String),
Description Nullable(String),
Area Nullable(String),
"Published at" Nullable(String)
 )
ENGINE = MergeTree
PARTITION BY (Area, Salary)
ORDER BY Ids  SETTINGS allow_nullable_key = 1;

ALTER TABLE vacancy  MOVE PARTITION ('Москва',true) TO TABLE vacancy_m;
ALTER TABLE vacancy  MOVE PARTITION ('Санкт-Петербург',true) TO TABLE vacancy_sp;