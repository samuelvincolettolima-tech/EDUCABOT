import pyodbc

def get_connection():
    conn = pyodbc.connect(
        "Driver={SQL Server};"
        "Server=localhost;"
        "Database=EducaBot;"
        "Trusted_Connection=yes;"
    )
    return conn
