## How to create a new Permanent table

1) Write SQL Query
2) click Show options
3) Specify the destination table ( can be existing )
4) Choose write preference (if already exists)
5) Run Query

* Google's big query automatically caches tables for 24 hours behind the
scenes . If you specify a Permanent table, the results are not saved in a
temporary table.

## Cache is not used when :

* underlying table is updated
* Deterministic queries used (like current_timestamp())
* Cache is disable in options :O !


## Storing results in a view

* View = Saved SQL Query ( a virtual table)
* The underlying query is re-ran each time the view is queried

Authorized views allow control over which current_user() sees what rows in the table

view is similar to saving a snapshot of the table at one time.

## primary use cases for views
 * Authorized views
 * Rapidly changing the underlying table
