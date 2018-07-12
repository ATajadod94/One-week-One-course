#standardsql
SELECT totrevenue
FROM dataset


SELECT totrevenue
FROM dataset
LIMIT 10

SELECT totrevenue
FROM dataset
ORDER BY totrevenue DESC
LIMIT 10



#FUNCTIONS
SELECT FORMAT("%'d'",totrevenue)
FROM dataset
ORDER BY totrevenue DESC
LIMIT 10


SELECT (field1 - field2) as newname
