Resources : http://www.dabeaz.com/datadeepdive/

# reading data

* Leave "As is"(lists) : ~235 mb
* read as tuple : ~183mb
* read as dictionary : ~300mb
* Using class definitions (class row): ~247mb
* You can get better performance with classes using  __slots__ : ~177mb

If you use slots , then there will be no underlaying dictionary to our object __dict__
* Read using pandas : ~58mb
