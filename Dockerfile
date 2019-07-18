FROM freeradius/freeradius-server:latest
RUN apt update
RUN apt install -y mysql-client
COPY raddb/mods-available/sql /etc/raddb/mods-enabled/sql
COPY raddb/sites-available/default /etc/raddb/sites-available/default
COPY raddb/sites-available/inner-tunnel /etc/raddb/sites-available/inner-tunnel
