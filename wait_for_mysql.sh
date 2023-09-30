#!/bin/bash

# 定义 MySQL 容器名称
MYSQL_CONTAINER_NAME=db

# 检查 MySQL 容器是否启动
echo "Waiting for MySQL container to start..."
while ! docker-compose exec $MYSQL_CONTAINER_NAME mysqladmin ping -h $MYSQL_CONTAINER_NAME --silent; do
    echo "MySQL is not ready yet..."
    sleep 2
done

# MySQL 容器已经启动，可以启动 Django
echo "MySQL is up and running, starting Django."
exec "$@"
