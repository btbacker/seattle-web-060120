# SWBATs
- Review ORMs
- Build out some CRUD methods for ORM
- Distinguish between schema methods and data methods
- Work on a couple association methods

# SQL Notes
```SQL
CREATE - 
1. CREATE TABLE ...
2. INSERT INTO ...
READ :
1. SELECT * FROM table ...
2. SELECT * FROM table WHERE <column> == <value>
UPDATE - 
1. UPDATE table SET <column> = <value> WHERE <col> = <val>
2. ALTER table (add, remove, rename column)
DELETE - 
1. DELETE FROM table WHERE <col> == <val>
2. DROP TABLE <tablename>
INNER JOIN - 
SELECT * FROM <table1>
INNER JOIN <table2>
ON <table1.column> == <table2.column>
```

# Object Relational Mapping
- Table -> Class
- Columns -> attributes
- Rows -> instances

```Ruby
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "music.db"
)
```

1. Install activerecord && sinatra-activerecord gem
2. bundle
3. Establish connection with DB
4. Add rake tasks to Rakefile
5. Create some migrations
6. `rake db:create_migration` -> create table
7. Wrote out change method -> create_table