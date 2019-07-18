# FreeRADIUS and MySQL Docker!

A sample docker-compose for RADIUS with MySQL.


# Usage

```
cp mv .env.example .env 
```
Set desired MySQL user details in **.env** and  search for **Connection info:**  in the file  **raddb/mods-available/sql**  change the details there as well.

```
docker-compose up -d
```
## Todos
*	Use of environment variables in **sql** file instead static

License
----

MIT