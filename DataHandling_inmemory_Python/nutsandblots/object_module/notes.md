* All objects have an Id and a memory count

a = "object"
id(a) , type(a), sys.getrefcount(a)

## Reassignment

* Assignments do not copy anything
* Assignments move the name elsewhere (names move around to different objects)
* Assignment never overwrite an existing object

### Shallow copying vs Deep Copying
 * Shallow copy
 * deep copy -> use copy module (only full proof way of copying)

## Exploiting immutability :
 * Sharing can save memory !
 * Python is using for opportunities to share data
 * Instances use a compact key-sharing dicts
  
## Garbage collection
  * objects remain in memory in python until the reference hits 0
  * Ref count is the primary mechanism for garbage collection in
  * Reference cycles will not be cleared until the periodic garbage collection in python

## Builtin representation
  * [bases]('base.png')
  * [Strings]('strings.png')
  * [Containers]('containers.png')
  * [Tuples]('tuples.png')
  * [Lists]('lists.png')
  * [Instances]('instances.png')
  * [Instances w/ slots]('instances_slots.png')

## Overallocation
  * All mutable containers over-allocated memory
  * once you use up 2/3 of the memory, size is increased
  * Slices use the exact size of list and reduce memory to it (not good practice)

## __slots__
  * Gets rid of instance dictionary
  * Data is stored "inline" with the object
