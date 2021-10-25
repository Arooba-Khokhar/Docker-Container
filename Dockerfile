FROM arey/mysql-client

# Copy the database schema to the / directory
COPY ./schema.sql ./schema.sql
COPY ./Entry_Point.sh ./Entry_Point.sh

ENTRYPOINT ["./Entry_Point.sh"]