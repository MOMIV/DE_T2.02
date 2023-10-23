CREATE TABLE IF NOT EXISTS vacancy
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
"Professional roles" Nullable(String),
Specializations Nullable(String),
"Profarea names" Nullable(String),
"Published at" Nullable(String)
 )
ENGINE = MergeTree
PARTITION BY (Area, Salary)
ORDER BY Ids  SETTINGS allow_nullable_key = 1