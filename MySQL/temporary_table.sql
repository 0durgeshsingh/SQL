CREATE TEMPORARY TABLE temp_users (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

/*
  Uses of Temporary Tables (MySQL)
  1. Store intermediate query results
  2. Break complex queries into simpler steps
  3. Reuse filtered or aggregated data
  4. Generate reports
  5. Perform data transformation or calculations
  6. Use inside stored procedures
  7. Test queries without affecting permanent tables
*/
/*
Benefits of Temporary Tables
1. Session-specific (visible only to current connection)
2. Automatically deleted when session ends
3. Do not clutter the database schema
4. Same table name can be used in different sessions
5. Can improve performance when reusing data
6. Support indexes for faster queries
7. Reduce repeated calculations
*/
