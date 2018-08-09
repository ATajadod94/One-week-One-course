## Key concept review

* Distinct vs GroupBy
 * Have to use GroupBy for aggregate functions
 * Distinct performs better(?) for larger datasets

* Math functions (avg, count, sum)
* Extract
* Aliases for renaming long table names or joining
* Casting datatypes ( you can cast items using a ":" syntax!)
        Types:
        numbers:
          whole: integer
          decimal: float
          Decimal with limited significant values: numeric

        text: text
          Text with maximum size set: varchar(length)

        true/false value:  boolean

        date objects:
          calendar date: date
          calendar date with specific time: timestamp
          Calendar date with specific time and timezone:  timestamp without timezone

        specific storage of key-value pairs: JSON
          set or collection of values that all share same data type: array
          Ex: collect of whole numbers would be an array of integers where the type for all values in the collection (array)
                    are all integers
* Sets (Inner and outer join)
  * Using "on" vs "where"

* Queries should be at most 15-20 lines 
