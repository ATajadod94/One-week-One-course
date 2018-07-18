[5 Principals of dataset integrity]('highqualitydata')

## Understand the shape of your dataset

* # of columns and rows, is it tall, wide or even?
* Understand the dataset skew (distribution)

## cleaning using SQL

### Validity
* Set up field datatype constrains
* specify fields as NULLABLE or REQUIRED
* Proactively check for Null values
* Check and filter allowable ranges
* Require primary key/ Relational constrains in upstream source system

### Accuracy
* Create test cases or calculated fields to check values
* Lookup values against an objective reference dataset

### Completeness
* Explore the dataset shape and skewness
* Enrich the dataset using Unions and joins

### Cleaning
* Store one fact in one place and use IDs to look up
* Use string functions to clean data

### Uniformity
* Document and comment your approach
* Use Format() to clearly indicate units
* CAST() formats
* Label visualizations

# Using google's cloud data prep
* FLOW : visual flow
* WRANGLERS : transformation steps
* RECIPE : multiple wranglers
