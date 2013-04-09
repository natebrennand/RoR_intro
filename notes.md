



# April 8th

mongo vs sql
    more like a text file than a table
    
active record

* not ODM
* it's an ORM
* active record is to sql
    * as mongoid is to mongo
    

### Schema for a Library
books, authors, publishers & users

* authors should embed books
* publishers should reference authors
* books should reference users

### Controllers

controller should never be that extensive

* should only call methods
* query data