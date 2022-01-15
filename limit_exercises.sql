#2 Facello, Simmel, Bamford, Koblick, Maliniak, Preusig, Zielinski, Kalloufi, Peac, Piveteau
SELECT DISTINCT last_name FROM employees limit 10;

#3
SELECT first_name, last_name, hire_date, birth_date
FROM employees 
WHERE hire_date BETWEEN ('1990-01-01') AND ('1999-12-31') AND (birth_date LIKE ('%12-25%')) LIMIT 5;
#Mang	Erie	1993-10-20	1959-12-25
#Evgueni	Srimani	1990-01-19	1961-12-25
#Florina	Garnier	1992-10-25	1964-12-25
#Sorina	Kermarrec	1992-01-10	1962-12-25
#Chriss	Binding	1992-07-11	1955-12-25

#4
SELECT first_name, last_name, hire_date, birth_date
FROM employees 
WHERE hire_date BETWEEN ('1990-01-01') AND ('1999-12-31') AND (birth_date LIKE ('%12-25%')) 
LIMIT 5 OFFSET 44;
#Rayond  Picel	1990-01-29	1956-12-25
#Basil	Senzako	1991-09-18	1953-12-25
#Deniz	Ozeki	1997-05-02	1958-12-25
#Dines	Berztiss 1994-08-26	1961-12-25
#Chikara	Braccini 1996-05-20	1953-12-25

#The LIMIT # is how many records per output (page) and the OFFSET # excludes prior records and outputs records after designed OFFSET # 