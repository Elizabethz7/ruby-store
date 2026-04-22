# RUBY - STORE
Este repositorio agrupa todos los conocimientos que he aprendido en ruby. Se comprenderan distintas gemas/metagemas, conexiones de bases de datos, distintos Active Jobs.

## Tabla de Contenidos
1. [Requisitos](#requisitos)
2. [Configuración de entorno](#configuración-de-entorno)
5. [Ejecución](#ejecucion)
4. [Rutas](#rutas)
5. [Vistas](#vistas)

## Requisitos

- **Ruby** 3.4.9
- **Rails** ~> 8.1.2
- **SQLite**
- **PostgreSQL**
- **Oracle Instant Client**
- **MySQL**
- **Redis**(Para Sidekid)

### Gemas principales

| Gema | Propósito |
|------|-----------|
| `pg` | Adaptador PostgreSQL |
| `ruby-oci8` + `activerecord-oracle_enhanced-adapter` | Conexión Oracle|
| `mysql2` | Conexión MySQL|
| `dotenv-rails` | Variables de entorno |
| `devise` | Autenticación, sign in sign up ...|

---

## Configuración de entorno

Copiar `.env.example` a `.env` y configurar las siguientes variables:

```bash
# Oracle Instant Client
# (Para que ruby-oci8 encuentre las librerías)
LD_LIBRARY_PATH=/opt/oracle/instantclient_21_21
NLS_LANG=AMERICAN_AMERICA.AL32UTF8

# PostgreSQL (Base principal / Destino)
POSTGRES_HOST=
POSTGRES_PORT=
POSTGRES_DB=
POSTGRES_USER=
POSTGRES_PASSWORD=

# Oracle CRM
ORACLE_HOST=
ORACLE_PORT=
ORACLE_SERVICE=
ORACLE_USER=
ORACLE_PASSWORD=

# MySQL Small Business
MYSQL_HOST=...
MYSQL_PORT=...
MYSQL_DB=...
MYSQL_USER=...
MYSQL_PASSWORD=...

```

---
## Ejecución

### Instalación inicial

```bash
# Instalar dependencias
bundle install

# Crear base de datos PostgreSQL y ejecutar migraciones
bin/rails db:create db:migrate

```

### Iniciar el servidor API

```bash
bin/rails server
# El servidor corre en http://localhost:3000
```

---


## Rutas

### `/products`
Ruta de CRUD inicial
### `/authentication`
Ruta donde se agruparan distintas formas de autenticar en Rails
#### `/authentication/v1`
Autenticación por medio de `devise`
* `/authentication/v1/others`: ruta de prueba de controlador anidado con bandera nativa `before_action :authenticate_user!` de `devise` para redireccionar a un usuario si no esta autenticado.

* `/authentication/v1/logout`: ruta de logout (sign out) con helper `sign_out` de `devise`.

---

## Vistas