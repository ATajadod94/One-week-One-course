* Postgres programming and sql programming can be used in conjunction
* Separate each command with a ";"
* Commands are ran sequentially

* Use "DO" to execute a command as a block

* Cascade

• Script commands can be 'wrapped' to execute a
command:
• DO $$ BEGIN
<execute/command>
END $$

* use "test" function appendix name while still debugging ur function

## Generated statement
DO $$ BEGIN
    EXECUTE 'DROP TABLE IF EXISTS ' || product_detail_tablename() ||
    '; CREATE TABLE ' || product_detail_tablename() || ' AS
    SELECT products.id as product_id,

execute is being used here 
