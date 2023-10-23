INSERT INTO vacancy 
FROM INFILE '/docker-entrypoint-initdb.d/IT_vacancies_full.csv'
FORMAT CSV