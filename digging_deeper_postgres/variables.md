## Declare
CREATE FUNCTION addition(integer, integer)
RETURNS integer
AS $$
DECLARE
 first_num ALIAS for $1 ;
 total integer;
BEGIN
  RETURN  $1 + $2;
END $$
LANGUAGE 'plpgsql'
RETURNS NULL ON NULL INPUT
IMMUTABLE; -- query won't use DB


## better method
CREATE FUNCTION addition(num1 integer, num2 integer)
RETURNS integer
AS $$
DECLARE
 total integer;
BEGIN
  total := num1 * num2;
  RETURN  $1 + $2;
END $$
LANGUAGE 'plpgsql'
RETURNS NULL ON NULL INPUT
IMMUTABLE; -- query won't use DB
