## Having :
  * applying filtering to the end of the query

## Concatenating strings
  * Use single quotes for strings ("tables in double")

## random()


## Exercise , write a function that returns a random number from 5-10

SELECT 5 + round(random() * 5)

* use a generate-series function to get x number of random numbers


# Writing functions
* Immutable
* STABLE
* VOLATILE

  * Our random function from writingfunctions is volatie since it uses random, we are defining the categorization above at a funciton level


 * Function name is returned by default as the column name of resulting query


## Write a function called Christmas Day of 2018 as a date

CREATE OR REPLACE FUNCTION christmas()
RETURNS DATE
AS 'SELECT '''2018-12-25''::DATE'
END
LANGUAGE SQL
IMMUTABLE;
select christmas()

CREATE OR REPLACE FUNCTION christmas()
RETURNS DATE
AS $$ BEGIN
  RETURN '2018-12-25'::DATE;
END $$
LANGUAGE 'plpgsql'
IMMUTABLE;
select christmas()


* plpgsl is a more appropriate language choice for longer queries and vice versa
* using "return Null on Null input" makes sure you don't run into casting problems


CREATE FUNCTION addition(integer, integer)
RETURNS integer
AS $$ BEGIN
  RETURN  $1 + $2;
  END $$
LANGUAGE 'plpgsql'
RETURNS NULL ON NULL INPUT
IMMUTABLE; -- query won't use DB

* Using strict instead of "return null" on no option, seems to do the same thing (?)
