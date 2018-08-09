* A schema can be seen as an analogy of a tab in an excel sheet
* you have to specify the scheme namespaces if using a non public schema
* search_path can be used for namespacing (look into it)

## Inheritance
* A master table can be used like an abstract class to enable easy looping over tables
* You can use constraints from your masterclass
* you can't drop the master table without dropping the child table(!)
