# Four types of Bigquery jobs

* Query
* Load Data -> Free
* Extract -> Free
* Copy -> Free

# Three Major categories of pricing :

[Price breakdown ]('./pricing.png')


Optimizing is very important as you are charged by bytes processed

[Upper limits on big query ]('./query_limits.png')


# Good query behaviour

* SELECT column where ... LIMIT 10 will still need to process *all rows*
* Use query validator
* Don't use start
* Use preview button
* filter early and often
* use cache when possible
* use saved views
* limit user defined functions


Data with 10 billion rows :
`This query will process 56 GB when run`


# Notes

* indexing is very important so we not have to search within our Data
* optimize for processing before worrying about storage
