# Configuración de db MySQL con Docker-compose
###### Requisitos: 
- Docker-compose 
- configurar la img de MySQL en Docker
[Docker Hub - images mysql](https://hub.docker.com/_/mysql)
------------
###### Configuracion de `docker-compose.yml`
```yml
version: '3.1'

services:
  db:
    image: mysql
    ports:
      - 3306:3306
    environment: 
      - MYSQL_ROOT_PASSWORD=admin 
      - MYSQL_PASSWORD=admin 
      - MYSQL_USER=admin 
      - MYSQL_DATABASE=database
    volumes:
      - ./data/db:/var/lib/mysql
```
### 2. Iniciar base de datos `docker-compose up -d db`
- Cerrar: `docker-compose down `

### Teoria de conjutos 

![](https://raw.githubusercontent.com/DaElias/Config_MySQL/main/notas%20de%20MySQL/set%20theory/set%20theory%20%231.jpg)

![](https://raw.githubusercontent.com/DaElias/Config_MySQL/main/notas%20de%20MySQL/set%20theory/set%20theory%20%232.jpg)

![](https://raw.githubusercontent.com/DaElias/Config_MySQL/main/notas%20de%20MySQL/set%20theory/sql_joins.jpeg)

