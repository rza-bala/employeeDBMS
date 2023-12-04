FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=root

COPY ./01_create_databases.sql /docker-entrypoint-initdb.d/
COPY ./02_create_tables.sql /docker-entrypoint-initdb.d/
COPY ./03_user_permissions.sql /docker-entrypoint-initdb.d/
COPY ./04_sample_data_dev.sql /docker-entrypoint-initdb.d/
COPY ./05_sample_data_test.sql /docker-entrypoint-initdb.d/
COPY ./06_create_views.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
