import mysql.connector

def get_database_connection():
    connection = mysql.connector.connect(
        host='gateway01.ap-southeast-1.prod.aws.tidbcloud.com',
        user='Cp1DMKGYqSr8dB8.root',
        password='Cwz1vdUrH3Ad8Py3',
        database='student_task_manager',
        port=4000
    )

    return connection
