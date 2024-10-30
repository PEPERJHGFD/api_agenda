from pydantic import BaseModel
from typing import List, Optional
from fastapi import FastAPI, HTTPException
import mysql.connector
from mysql.connector import Error

app = FastAPI()

# Configuración de la base de datos
db_config = {
    'host': 'localhost',
    'user': 'perlita',
    'password': '123', 
    'database': 'agenda',
}

class Agenda(BaseModel):
    id_persona: Optional[int]
    nombre: str
    primer_apellido: str
    segundo_apellido: str
    email: str
    telefono: str

# Función para obtener la conexión a la base de datos
def get_db_connection():
    try:
        connection = mysql.connector.connect(**db_config)
        return connection
    except Error as e:
        print("Error al conectar a la base de datos:", e)
        raise HTTPException(status_code=500, detail="Error al conectar a la base de datos")

@app.get("/personas", response_model=List[Agenda])
def get_personas():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM personas")
        personas = cursor.fetchall()
        return personas
    except Error as e:
        print("Error al realizar la consulta:", e)
        raise HTTPException(status_code=500, detail="Error al realizar la consulta")
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()