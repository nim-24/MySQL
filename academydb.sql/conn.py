import pymysql
# pip install mysql-connector
# 1 создать подключение
connection = pymysql.connect(
    host="localhost",
    user="root",
    password="admin",
    database="academy"
)
# 2 создать курсор
cursor = connection.cursor()
# 3 объявить команду
cursor.execute('select Count(id) from subjects')
# 4 достаем данные
rows = cursor.fetchall()
for row in rows:
    print(row)
# 5 закрываем соединение
cursor.close()



# import pymysql.cursors
#
# connection = pymysql.connect(
#     host="localhost",
#     user="root",
#     passwd="<admin>",
#     database="academy",
#     cursorclass=pymysql.cursors.DictCursor
#     )
# cursor = connection.cursor()
# sql = 'SELECT * from teachers'
# cursor.execute(sql)
# result = cursor.fetchone()
# for row in result:
#     print(row)
