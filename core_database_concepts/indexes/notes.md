Unfortunately , there are no programming assignments this week.
The following notes are my recollection of the most important points after the
completion of the video and quiz material   

# On Computer Memory :

Physical Disk -> Memory -> Cache (L3,L2,L1) -> CPU
(Sorted by speed)

Memory buffer is the "tool" used to move physical disk data to memory.

SSD are faster as they are not actual physical disks.


# Types of indexing:

1) None
2) Sorted
3) Hash

1) Clustered
2) Non-clustered

# To index or not to index:

1) Consider the most important queries
2) Consider the best plan using correct index
3) Determine if a better plan is available with a diff indexing

# How to index

* Does your index help multiple different queries?
* Do you have to often update your index? (if so, don't use it!!!)
* Indexes are usually mapped to primary key
* With multiple important attributes, create an index that maps to all/most (Composite index)
* Does your index help a lot of your queries?
* How is it organized? data coming into database and distribution  of data

# Composite index?

* sort first by most important attribute and so forth


* Sometimes all the information you need is actually in the index!! (think count)
