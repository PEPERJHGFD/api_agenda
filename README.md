# base_de_datos

## 0. Actualizar la lista de versiones de las librerias del sistema operativo

Actualiza las lista de versionees de librerias del sistema operativo

bash
sudo apt update


## 1. Instalar neofetch

Instalar neofetch para conocer las caracteristicas del sistema operativo que se esta utilizando.

bash
    sudo apt install neofetch -y


## 2. Ejecutar neofetch

bash
    neofetch


Alternativa para ver las caracteristicas del SO

bash
    uname -a


## 3. Crear archivo os.txt

Para conocer la version del SO

bash
neofetch > os.txt



## 4. Crear un espacio virtual
pip install virtualenv

bash
    virtualenv venv


## 5. Inicializar el ambiente virtual

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser


.\venv\Scripts\activate


bash
source venv/bin/activate


## 6. Salir del ambiente virtual

bash
deactivate


## 7. Crear el archivo .gitignore
bash
*.pyc
_pycache_/
venv/


## 8. Instalar librerias necesarias

Para este proyecto se usaran las librerias de [FastAPI](https://fastapi.tiangolo.com/#requirements)

bash
pip install "fastapi[standard]"

## 8. Instalar MySQL

bash
sudo apt install mysql-server

sudo service mysql start


## 9. Crear el archivo requirements.txt

Se agregara el archivo requirements para listar las librerias necesarias para el proyecto y sus versiones.

bash
pip freeze > requirements.txt


## 10. Crear el archivo runtime

bash
python3 -V > runtime


## 12. Ejecutar el servidor

bashsudo mysql -u root



bash
fastapi dev main.py


## 13. Indexar los archivos creados con git

bash
git add .
git commit -m "UPDATED"
git push -u origin main

## 14. Permisos 
´´
 sudo chown mysql:mysql /var/run/mysqld/mysqld.sock
sudo chmod 660 /var/run/mysqld/mysqld.sock
sudo chown -R mysql:mysql /var/run/mysqld
sudo chmod -R 755 /var/run/mysqld
sudo service mysql restart´
´´
## 14. Darle permisos al usuario´
''
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '12345';
FLUSH PRIVILEGES
''
## 15. Para  conectar con la base de datos y python 
´´
pip install mysql-connector-python
´´´
# Models
´´
Endpoints -> cliente
1.-Desccription: Endpoint que muestra todos los registros 
2.-Sumary: Muestra todos los registros 
3.-Method:GET
4.-Endpoint: http://localhost:800/v1/personas
5.-Authentication: NA
6.-Query params: NA
7.-Path params: /personas/
8.-ata: NA
10.-Status code: 202
11.-Response type






 |ATRIBUTO|Campo|