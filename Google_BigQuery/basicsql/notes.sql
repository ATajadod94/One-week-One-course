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


#Aggregations
SELECT
  SUM(totsrevenue) AS total_revenue.
  AVG(x) as a
  COUNT(DISTINCT ein) as b
  .
  .
FROM
  DATASET

# Nested functions!
ROUND(AVG(totrevenue),2)

#GROUP BY
SELECT
  a,
  count(a) as COUNT
FROM
  DATASET
GROUP BY a

SELECT
  a,
  count(a) as COUNT
FROM
  DATASET
GROUP BY a
HAVING COUNT > 1 #(we can use count here as select is ran first )

SELECT
  a,
  count(a) as COUNT
FROM
  DATASET
GROUP BY a
HAVING COUNT > 1


# PARSE_DATE FUNCTIONS, EXTRACT FUNCTION

FROM DATASET
WHERE
  EXTRACT (YEAR FROM PARS_DATE('%Y%M')) = 2014

# CAST
CAST("1234" AS INT64)
CAST("2017-08-01" AS DATE)

SELECT SAFE_CAST("APPLE" as INT64)
# returns NULL!

WHERE
  state IS NULL
#notice the "IS" above, null has its own syntax


WHERE
  LOWER(name) LIKE '%help%'

# anything can come before or after help
