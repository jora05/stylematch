import psycopg2
import os

# Try to get from system enviroment variable
# Set your Postgres user and password as second arguments of these two next function calls
user = os.environ.get('PGUSER', 'postgres')
password = os.environ.get('PGPASSWORD', '123')
host = os.environ.get('HOST', '127.0.0.1')

def db_connection():
    db = "dbname='stylematch' user=" + user + " host=" + host + " password=" + password
    conn = psycopg2.connect(db)

    return conn

def init_db():
    conn = db_connection()
    cur = conn.cursor()

    with open ('stylematch.sql', encoding='utf-8') as db_file:
        cur.execute(db_file.read())
        
    conn.commit()
    conn.close()
