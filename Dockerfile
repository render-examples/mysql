# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:5.7.24

# Add timezone data
RUN apt-get update \
 && apt-get install --no-install-recommends -y tzdata \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

COPY config/user.cnf /etc/mysql/my.cnf
