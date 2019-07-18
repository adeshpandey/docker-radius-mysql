# FreeRADIUS and MySQL Docker!

A sample docker-compose for RADIUS with MySQL.


# Usage

```
cp mv .env.example .env 
```
Set desired MySQL user details in **.env** and  search for **Connection info:**  in the file  **raddb/mods-available/sql**  change the details there as well.

```
docker-compose up -d
docker exec -it docker-radius-mysql_db_1 mysql -uradius -p radius -e 'insert into radcheck (username,attribute,op,value) values("fredf", "Cleartext-Password", ":=", "wilma");'

test with radtest if configured successfully
docker exec -it docker-radius-mysql_radius_1 radtest fredf wilma localhost testing123

```



## Todos
*	Use of environment variables in **sql** file instead static

License
----

MIT