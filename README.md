# reddit-database-project
ETL and analysis of Reddit Pushshift data in PostgreSQL, using normalized tables, relationships, and optimized bulk loading with COPY.

## Description
ETL and analysis of Reddit Pushshift data in PostgreSQL using normalized tables, relationships, and bulk loading with the COPY command. This project covers creating tables, defining relationships, loading large datasets, and running SQL queries to analyze Reddit comments, submissions, authors, and subreddits.

## Project Files

- `create_tables.sql`  
  Contains SQL commands to create normalized database tables for Reddit data.

- `create_relations.sql`  
  Defines foreign key constraints and relationships between tables.

- `COPY.sql`  
  Includes COPY commands to efficiently load large CSV datasets into the PostgreSQL tables.

- `queries.sql`  
  Implements the required SQL queries to explore and analyze the loaded data per assignment tasks.

- `assignment1.sh`  
  Bash shell script automating the setup process, including running schema creation, relations, data loading, and query execution.

## Technologies Used
- PostgreSQL for relational database management
- SQL for data definition and querying
- Bash for automation of the workload
- COPY command for optimized bulk data loading

## Setup and Usage

1. Ensure PostgreSQL is installed and running.
2. Adjust database connection parameters if necessary.
3. Run the shell script to automate the full ETL and query process:
4. Alternatively, manually run SQL scripts in the following order:
- `create_tables.sql`
- `create_relations.sql`
- `COPY.sql`
- `queries.sql`

## Author
Danush Nagarajan




