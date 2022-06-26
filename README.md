### 1. Configuración de db MySQL con Docker-compose
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


