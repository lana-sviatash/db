import sqlite3
import os
from psycopg2 import Error
import logging
from pprint import pprint

from connect_to_db import database


def execute_query(query_file):
    with open(query_file, 'r') as file:
        query = file.read()

        conn = sqlite3.connect(database)
        cursor = conn.cursor()
        try:
            cursor.execute(query)
            pprint(cursor.fetchall())
            conn.commit()
        except Error as err:
            logging.error(err)
        finally:
            cursor.close()
            conn.close()


if __name__ == '__main__':
    query_files = [f for f in os.listdir('.') if (f.startswith('query') and f.endswith('.sql'))]

    for query_file in query_files:
        print(f'Executing query from {query_file}...')
        execute_query(query_file)
        print(f'Query from {query_file} executed successfully.\n')
