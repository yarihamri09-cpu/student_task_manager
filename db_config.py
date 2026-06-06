import mysql.connector

def get_database_connection():
     connection = mysql.connector.connect(
        host='gateway01.ap-southeast-1.prod.aws.tidbcloud.com',
        user='Cp1DMKGYqSr8dB8.root',
        password='v6Wwzrjof2tgj0RH',
        database='student_task_manager',
        port=4000
     )

     return connection