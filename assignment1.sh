#!/usr/bin/env bash
# assignment1.sh
# author: DANUSH NAGARAJAN
# ASU ID: 1236967240


set -euo pipefail  

#Database config
DATABASE="postgres"
USER="postgres"
PASSWORD="postgres"
HOST="127.0.0.1"
PORT="5432"

#Export pwd for psql
export PGPASSWORD="$PASSWORD"
PSQL_CMD="psql -h $HOST -p $PORT -U $USER -d $DATABASE -v ON_ERROR_STOP=1"

#Step 1: Create tables
echo "==> Creating tables..."
$PSQL_CMD -f "./create_tables.sql"

#Step 2: Load CSV files 
echo "==> Importing CSV data..."
$PSQL_CMD -f "./COPY.sql"

#Step 3: Set up foreign keys and relationships
echo "==> Establishing table relations..."
$PSQL_CMD -f "./create_relations.sql"

#Step 4: Execute assignment queries
echo "==> Running queries..."
$PSQL_CMD -f "./queries.sql"

echo "==> All steps completed successfully!"
