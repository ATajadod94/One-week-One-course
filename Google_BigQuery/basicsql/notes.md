# Using google's bigsql , includes a companion sql file.

## general notes

*  start with #standardsql
*  When selecting data, make sure to use FROM 'project.dataset


## FUNCTIONS

* using formats to display data better
* using "AS" to name columns
* best to leave stylistic formatting to visualization or data report
* Select statements are executed after the filters!! can cause errors
* no comma after the final select field
* avoid using * to select column (specially since we are paying per use)


### Use the right function for the job

1) String manipulation functions - Format()
  Concat
  ENDS_WITH
  LOWER
  REGEXP_CONTAINS

2) Aggregation Functions  - SUM()COUNT()AVG()MAX()...

3) Data type conversion functions - cast()
  A lot of date functions available, including current_data, data_trunc, ...

4) Date functions - Parse_datetime()

There are also statistical , analytical and user-defined functions.


* DO NOT FORGET TO USE A GROUP BY IF YOU ARE USING A MIX OR AGGRREGATED AND NON AGGREGATED FIELDS

![Data types in sql]('./sql_datatypes.png')

### NULL
Null is similar to Matlab (absence of data)


## Final notes

*  You cannot filter aggregated fields in the WHERE clause (use HAVING instead) and additionally you cannot filter on aliased fields within the WHERE clause

* Large GROUP BYs really hurt performance (consider filtering first and / or using aggregation functions)
