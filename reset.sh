db="task.sqlite"

sqlite3 $db < ./sql/create-schema.sql
sqlite3 $db < ./sql/populate-tables.sql