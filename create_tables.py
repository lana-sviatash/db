from sqlite3 import Error
from connect_to_db import connection, database

def create_table(conn, create_table_sql):
    try:
        with conn:
            conn.execute(create_table_sql)
    except Error as e:
        print(e)


if __name__ == '__main__':
    with open('create_db.sql', 'r') as file:
        sql_create_table = file.read().split(';')


    with connection(database) as conn:
        if conn:
            for create_item in sql_create_table:
                create_table(conn, create_item)
        else:
            print("Error! cannot create the database connection.")
