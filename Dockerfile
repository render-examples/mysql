# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql:8.0.46

COPY config/user.cnf /etc/mysql/my.cnf
