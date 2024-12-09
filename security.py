import mysql.connector

# Conexión a la base de datos
db = mysql.connector.connect(
    host="localhost",
    user="perlita",
    password="123",
    database="agenda"
)

cursor = db.cursor(dictionary=True)

# Consulta para obtener todos los usuarios
query = "SELECT * FROM usuarios;"
cursor.execute(query)
usuarios = cursor.fetchall()

for usuario in usuarios:
    print(usuario)

# Cerrar la conexión
cursor.close()
db.close()
