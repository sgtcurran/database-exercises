CREATE TEMPORARY TABLE temptable1(
col1 INT UNSIGNED NOT NULL);

USE innis_1667;

CREATE TEMPORARY TABLE temptable1(
col1 INT UNSIGNED NOT NULL);

SELECT Database ();
SHOW TABLES;
SELECT * FROM temptable1;

INSERT INTO temptable1(col1) VALUES (1), (2), (3), (4);

SELECT * FROM temptable1;

SELECT * FROM mall_customers.customers LIMIT 5;
SELECT DATABASE();

CREATE TEMPORARY TABLE fakecustomers AS (
	SELECT * FROM mall_customers.customers LIMIT 5
);
SELECT * FROM fakecustomers;

SELECT * FROM temptable1;
DROP table temptable1;

SELECT * FROM fakecustomers;

