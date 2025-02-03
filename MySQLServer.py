import mysql.connector
from mysql.connector import Error

try:
    # create a connection to mysql

    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="#12WanteD#",
    )

    # create a cursor object to execute SQL queries

    mycursor = mydb.cursor()

    # create the database

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

    # close the connection
    mycursor.close()
    mydb.close()

except mysql.connector.Error as e:
    print(f'error {e}')