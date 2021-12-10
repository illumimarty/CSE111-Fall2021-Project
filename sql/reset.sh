db="task.sqlite"

sqlite3 $db < create-schema.sql
sqlite3 $db < populate-tables.sql